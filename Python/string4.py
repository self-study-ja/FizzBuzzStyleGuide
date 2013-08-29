# -*- coding: utf-8 -*-
"""
FizzBuzz use String.
"""


def _fizzbuzz_string(slice_fizzbuzz):
    start = slice_fizzbuzz * 4
    end = ((slice_fizzbuzz + 1) * 4) + ((slice_fizzbuzz == 3) * 4)
    return "    FizzBuzzFizzBuzz"[start:end]


def _fizzbuzz(x):
    fizz = not (x % 3)
    buzz = (not (x % 5)) * 2
    slice_fizzbuzz = sum([fizz, buzz])
    return filter(lambda x: x != " ", _fizzbuzz_string(slice_fizzbuzz))


def fizzbuzz(x):
    print (_fizzbuzz(x) or x)


def main():
    for x in range(1, 101):
        fizzbuzz(x)


if __name__ == "__main__":
    main()
