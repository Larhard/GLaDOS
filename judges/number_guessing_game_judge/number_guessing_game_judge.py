#!/bin/env python2
import random
import Queue

class PlayerData:
    """
    Class for holding and manipulating information about players.
    """

    def __init__(self, guesses_available):
        self.guesses_left = guesses_available
        self.initial_random = (-1)
        self.score = 0

    def ended_game(self):
        return self.guesses_left == 0 or self.score != 0



class Judge:
    """
    Judge for the example get for the glados testing system.
    Does not handle timeouts - id est, it waits till all bots give answers
    forever (not recommended solution for release judges).
    """

    def get_input(self):
        return raw_input()

    def output(self, text):
        print text

    def log(self, text):
        self.output("-2  %s" % text)

    def p_to_all(self, text):
        self.output("0  %s" % text)

    def p_to_player_n(self, n, text):
        self.output("%d  %s" % (n, text))

    def p_to_server(self, text):
        self.output("-1 %s" % text)

    def process_server_message(self, msg):
        pass

    def get_parameter(self, par_type):
        """
        Reads a line and parses it, expecting to find a parameter of type
        par_type. If it does not find it, an error is raised.
        """
        tmp = self.get_input().split() # should be limited in release version
        if tmp[0] != '-1' or tmp[1] != par_type or len(tmp) != 3:
            raise ValueError(
                    "Got wrong parameters, expected '-1 %s \d', got '%s'." \
                            % (par_type, ' '.join(tmp)))
        return int(tmp[2])

    def set_parameters(self):
        self.players_amount = self.get_parameter('players')
        self.guess_limit = self.get_parameter('GUESS_LIMIT')
        self.min_number = self.get_parameter('MIN_NUMBER')
        self.max_number = self.get_parameter('MAX_NUMBER')
        
        tmp = self.get_input().split()
        if len(tmp) < 2 or tmp[0] != '-1' or tmp[1] != 'START':
            raise ValueError(
                    "Got unexpected parameters. Expected '-1 START', got '%s'." \
                            % ' '.join(tmp))

    def process_guess(self, text):
        tmp = text.split()
        pp = self.players[int(tmp[0]) - 1] # processed player abbreviation
        if pp.ended_game():
            pass # the player used all his guesses
        else:
            try:
                if int(tmp[1]) == self.number_to_guess:
                    self.p_to_player_n(int(tmp[0]), 'end') 
                    pp.score = pp.guesses_left
                    self.log('player %s score : %d' % (tmp[0], pp.score))
                elif int(tmp[1]) > self.number_to_guess:
                    self.p_to_player_n(int(tmp[0]), 'lower')
                    self.log('player %s tried %s (to large)' \
                            % (tmp[0], tmp[1]))
                else:
                    self.p_to_player_n(int(tmp[0]), 'greater')
                    self.log('player %s tried %s (to small)' \
                            % (tmp[0], tmp[1]))
            except ValueError: # client sent wrong data
                self.log('player %s sent wrong data' % tmp[0])

            pp.guesses_left -= 1

            if pp.guesses_left == 0 and pp.score == 0:
                self.log('player %s score : %s' % (tmp[0], pp.score))


    def supervise_match(self):
        self.set_parameters()
        self.players = [PlayerData(self.guess_limit) for i in
                xrange(self.players_amount)]
        self.log('game started')
        self.log(self.min_number)
        self.log(self.max_number)

        self.p_to_all(self.min_number)
        self.p_to_all(self.max_number)

        self.guesses_queue = Queue.Queue()

        for player in self.players:
            while player.initial_random == (-1):
                tmp = self.get_input().split()
                if int(tmp[0]) == (-1):
                    self.process_server_message(' '.join(tmp))
                else:
                                # assuming server sends correct data
                    if self.players[int(tmp[0]) - 1].initial_random != (-1):
                        self.guesses_queue.put(' '.join(tmp))
                                    # have to watch out on clients sending 
                                    # to many messages
                    else:
                        try:
                            number = int(tmp[1])
                        except ValueError:
                            pass
                        else:
                            if self.min_number <= number <= self.max_number:
                                self.players[int(tmp[0]) - 1].initial_random = number
                            else:
                                pass
        self.number_to_guess = sum([a.initial_random for a in self.players]) \
                        % (self.max_number - self.min_number) + self.min_number

        self.log('number to guess is %d' % self.number_to_guess)

        while not self.guesses_queue.empty():
            self.process_guess(self.guesses_queue.get())

        for player in self.players:
            while not player.ended_game():
                self.process_guess(self.get_input())

        for i in xrange(self.players_amount):
            self.p_to_server('score %d %d' % (i+1, self.players[i].score))

        self.p_to_server('end')




if __name__ == '__main__':
    caroline = Judge()

    caroline.supervise_match()






