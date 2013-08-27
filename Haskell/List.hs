--
-- List FizzBuzz Pattern
--
-- import Runner (go) <- not Use This

list_fizz :: [Int]
list_fizz = [1, 0, 0]

list_buzz :: [Int]
list_buzz = [1, 0, 0, 0, 0]

list_fizzbuzz :: [String]
list_fizzbuzz = zip list_fizz list_buzz

has_fizzbuzz :: String -> String -> String
has_fizzbuzz "" x = x
has_fizzbuzz x _  = x


-- main :: IO ()
-- main = sequence [list_fizzbuzz 
