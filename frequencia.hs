frequencia :: Int -> [Int] -> Int
frequencia elemento [] = 0
frequencia elemento (x:xs) = if elemento == x then 1 + frequencia elemento xs
else frequencia elemento xs

contaRepeticao :: [Int] -> [Int] -> [Int]
contaRepeticao [] lista = []
contaRepeticao(x:xs) lista = [frequencia x lista]++ contaRepeticao xs lista

main :: IO ()
main = do
 lista <- getLine
 print(contaRepeticao(read lista) (read lista))
