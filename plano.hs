cartesiano :: Int -> Int -> String
cartesiano x y | (x /= 0 && y > 0) = "eixo y"
               | (x > 0 && y /= 0) = "eixo x"
               | (x > 0 && y > 0) = "primeiro quadrante"
               | (x > 0 && y < 0) = "quarto quadrante"
               | (x < 0 && y < 0) = "terceiro quadrante"
               | (x < 0 && y > 0) = "segundo quadrante"

main :: IO ()
main = do
 x <- getLine
 y <- getLine
 let retorno = cartesiano read x read y
 putStrLn("" ++ retorno)




