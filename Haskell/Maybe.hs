--
-- Maybe Monad Pattern
--
import Runner (go)
import Control.Applicative ((<*>))

type IsFizzBuzz = Maybe String 

is_n:: Integer -> Integer -> Integer
is_n x y = x `mod` y 

fizz :: Integer -> Integer
fizz x = is_n x 3

buzz :: Integer -> Integer
buzz x = is_n x 5

maybe_div :: Integer -> String -> IsFizzBuzz -> IsFizzBuzz
maybe_div 0 str m = case m of
    Nothing -> Just str
    Just x  -> Just $ str ++ x
maybe_div _ str m = m

maybe_fizz :: Integer -> IsFizzBuzz -> IsFizzBuzz
maybe_fizz x m = maybe_div is_fizz "Fizz" m
    where is_fizz = fizz x 

maybe_buzz :: Integer -> IsFizzBuzz -> IsFizzBuzz
maybe_buzz x m = maybe_div is_buzz "Buzz" m
    where is_buzz = buzz x

maybe_fizzbuzz :: Integer -> IsFizzBuzz -> String
maybe_fizzbuzz x m = case m of
    Nothing -> show x
    Just x -> x

maybe_process :: Integer -> String
maybe_process x = maybe_fizzbuzz x =<< is_fizzbuzz x
    where is_fizzbuzz x = maybe_fizz x >>= maybe_buzz x

main :: IO ()
main = go maybe_process

