module Main where

main :: IO ()
main = do
  x <- getLine
  putStrLn (show (menorNumero (read x :: [Int])))

menorNumero :: [Int] -> Int
menorNumero [x] = x
menorNumero (x:xs) | x < menorNumero xs = x
                   | otherwise = menorNumero xs
