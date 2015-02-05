#!/usr/bin/env python2
import random
import sys


class Bot:
    """
    Example bot for Glados testing system.
    """
        
    def set_parameters(self):
        self.total_min = int(raw_input())
        self.total_max = int(raw_input())

        self.current_min = self.total_min
        self.current_max = self.total_max

        self.last_guess = 0

    def output(self, what):
        print what
        sys.stdout.flush()

    def give_random(self):
        self.output(random.randint(self.total_min, self.total_max))

    def make_guess(self):
        self.last_guess = (self.current_max + self.current_min) / 2
        self.output(self.last_guess)
        
    def get_feedback(self):
        feedback = raw_input()
        if feedback == 'end':
            return 0
        elif feedback == 'greater':
            self.current_min = self.last_guess + 1
            return 1
        elif feedback == 'lower':
            self.current_max = self.last_guess - 1
            return 1

    def play_game(self):
        self.set_parameters()
        self.give_random()
        self.make_guess()

        while self.get_feedback():
            self.make_guess()



if __name__ == '__main__':
    clever_bot = Bot()
    clever_bot.play_game()
 

