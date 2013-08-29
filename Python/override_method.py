# -*- coding: utf-8 -*-
"""
FizzBuzz Overwrite Class Method
"""


class FizzBuzz(object):

    def __init__(self, x):
        self.number = x

    def override(self):
        fizz = not (self.number % 3)
        buzz = (not (self.number % 5)) * 2
        fizzbuzz = sum([fizz, buzz])
        self.say = self.p_fizzbuzz(
            [
                self._not_fizzbuzz,
                self._fizz,
                self._buzz,
                self._fizzbuzz][fizzbuzz])
        return self

    def say(self):
        raise NotImplementedError('should override say() method')

    def _fizz(self):
        return "Fizz"

    def _buzz(self):
        return "Buzz"

    def _fizzbuzz(self):
        return self._fizz() + self._buzz()

    def p_fizzbuzz(self, f):
        def _method():
            print f()
        return _method

    def _not_fizzbuzz(self):
        return self.number


def main():
    for x in range(1, 101):
        FizzBuzz(x).override().say()

if __name__ == "__main__":
    main()
