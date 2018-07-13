module Main where

main :: IO ()
main = do
 x <- getLine
 y <- getLine
 putStrLn (show (reducao (somaElementos (read x :: [Int]))(somaElementos (read y :: [Int]))))

somaElementos :: [Int] -> Int
somaElementos [] = 0
somaElementos (x:xs) = x + somaElementos xs

reducao :: Int -> Int -> Int
reducao x y | (x > y) = 1
            | (x < y) = 2
            | (x == y) = 0
