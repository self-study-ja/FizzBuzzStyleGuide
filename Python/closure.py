# -*- coding: utf-8 -*-
"""
closure FizzBuzz
"""


def fizzbuzz(x):
    fizz = (not (x % 3)) * "Fizz"
    buzz = (not (x % 5)) * "Buzz"
    fizzbuzz_string = fizz + buzz

    def _fizzbuzz():
        if fizzbuzz_string:
            print fizzbuzz_string
        else:
            print x

    return _fizzbuzz


if __name__ == "__main__":
    for i in range(1, 101):
        fizzbuzz(i)()
