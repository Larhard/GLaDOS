#!/usr/bin/env python2
import random
import sys


class Logger(object):
    def __init__(self, log_file=None):
        self.file = log_file or sys.stderr

    def log(self, what):
        self.file.write(what + "\n")
        self.file.flush()

logger = Logger()


class Bot:
    """
    Example bot for Glados testing system.
    """
        
    def set_parameters(self):
        self.total_min = int(raw_input())
        self.total_max = int(raw_input())
        logger.log("min/max: {}/{}".format(self.total_min, self.total_max))

        self.current_min = self.total_min
        self.current_max = self.total_max

        self.last_guess = 0

    def output(self, what):
        print what
        sys.stdout.flush()

    def give_random(self):
        self.output(random.randint(self.total_min, self.total_max))

    def make_guess(self):
        self.last_guess = random.randint(self.current_min, self.current_max)
        self.output(self.last_guess)
        
    def get_feedback(self):
        feedback = raw_input()
        logger.log("feedback" + feedback)
        if feedback == 'end':
            return 0
        elif feedback == 'greater':
            self.current_min = self.last_guess + 1
            return 1
        elif feedback == 'lower':
            self.current_max = self.last_guess - 1
            return 1

    def play_game(self):
        logger.log("PLAY GAME")
        self.set_parameters()
        logger.log("PARAMETERS SET")
        self.give_random()
        logger.log("RANDOM GIVEN")
        self.make_guess()
        logger.log("GUESS MADE")

        while self.get_feedback():
            self.make_guess()
            logger.log("NEW GUESS MADE")



if __name__ == '__main__':
    wheatley = Bot()
    wheatley.play_game()
 


