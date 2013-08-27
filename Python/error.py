# -*- coding: utf-8 -*-

def error_fizzbuzz(x):
    fizz, buzz = "", ""

    try:
        fizz = ["Fizz"][x % 3]
    except:
        pass

    try:
        buzz = ["Buzz"][x % 5]
    except:
        pass
    
    try:
        (fizz + buzz)[1]
        print fizz + buzz
    except:
        print x


if __name__ == '__main__':
    for x in range(1, 100):
        error_fizzbuzz(x)
