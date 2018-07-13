resto :: Int -> Int
resto b = mod b 2

mod2 :: Int -> Int
mod2 a = div a 2

conversao :: Int -> String
conversao c | c == 0 = show (0)
	  | c == 1 = show (1)
	  | otherwise = conversao (mod2 c) ++ show (resto c)


main :: IO()
main = do
  numero <- getLine
  putStrLn(conversao (read numero))
