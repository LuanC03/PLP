module Main where

soma :: Int -> Int
soma n = if n < 10 then n else (n `mod` 10) + soma (n `div` 10)

verificaNumero :: Int-> Int
verificaNumero x | x < 10 = x
                 | otherwise = verificaNumero(soma x)

compara :: Int -> Int -> Int
compara x y | x > y = 1
            | x < y = 2
            | otherwise = 0

main :: IO ()
main = do
    x <- getLine
    y <- getLine
    print(compara(verificaNumero(read x)) (verificaNumero(read y)))
