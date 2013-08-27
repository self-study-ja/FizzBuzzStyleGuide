--
-- Common Module for FizzBuzz
--

module Runner where

go :: (Integer -> String) -> IO ()
go f = process f 1

process :: (Integer -> String) -> Integer -> IO ()
process f 101 = putStr ""
process f x = (putStrLn $ f x) >> process f next
    where next = x + 1
