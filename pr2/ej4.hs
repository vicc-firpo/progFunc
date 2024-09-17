-- Ejercicio 4

sumaPrimeros :: Num x => [x] -> [x]
sumaPrimeros [] = []
sumaPrimeros [x] = [x]
sumaPrimeros s@(x : y : xs) = (x + y) : s