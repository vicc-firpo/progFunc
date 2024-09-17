-- Ejercicio 9

descomp :: Int -> (Int, Int)
descomp n = if x <= 5 then (x, y) else (x - 10, y + 1)
    where x = mod n 10
          y = div n 10  