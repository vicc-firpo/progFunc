-- Ejercicio 6

cuentas :: Integer -> Integer
cuentas = (`div` 2) . (\x -> x - 8) . (* 2) . (+ 3)
