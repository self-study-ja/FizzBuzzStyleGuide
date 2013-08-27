--
-- Pattern Match Pattern
--

import Runner (go)

main :: IO ()
main = go fizzbuzz

has_fizzbuzz :: Integer -> Integer -> String
has_fizzbuzz 0 0 = "FizzBuzz"
has_fizzbuzz 0 _ = "Fizz"
has_fizzbuzz _ 0 = "Buzz"
has_fizzbuzz _ _ = ""

is_fizzbuzz :: String -> String -> String
is_fizzbuzz "" x = x
is_fizzbuzz x  _ = x

fizzbuzz :: Integer -> String 
fizzbuzz x = is_fizzbuzz (has_fizzbuzz fizz buzz) $ show x
    where
        fizz = is_n x 3
        buzz = is_n x 5

is_n :: Integer -> Integer -> Integer
is_n x y = x `mod` y
