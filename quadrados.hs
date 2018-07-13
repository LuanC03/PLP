module Main where

main :: IO ()
main = do
 x <- getLine
 putStrLn (show (diferencaQuadrados (read x)))

quadSoma :: Int -> Int
quadSoma n = (somaElements [x | x <- [1..n]])^2

somaElements :: [Int] -> Int
somaElements [] = 0
somaElements (x:xs) = x + somaElements xs

somaQuadrado :: Int -> Int
somaQuadrado n = somaQuadradoAux [x | x <- [1..n]]

somaQuadradoAux :: [Int] -> Int
somaQuadradoAux [] = 0
somaQuadradoAux (x:xs) = x^2 + somaQuadradoAux xs

diferencaQuadrados :: Int -> Int
diferencaQuadrados x = quadSoma x - somaQuadrado x


