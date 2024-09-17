-- Ejercicio 2

analyze :: Int -> Int -> Int -> Bool
analyze a b c = if x <= y - x then True else False
  where
    x = max (max a b) c
    y = a + b + c