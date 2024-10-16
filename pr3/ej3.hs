-- Ejercicio 3

-- parte a
sumSqrs :: Num a => [a] -> a
sumSqrs xs | null xs = 0
           | otherwise = (head xs * head xs) + sumSqrs(tail xs)

-- parte b
elemb :: Eq a => a -> [a] -> Bool
elemb x xs | null xs = False
           | otherwise = (x == head xs) || elemb x (tail xs)

-- parte c
elimDups :: Eq a => [a] -> [a]
elimDups xs | null xs = xs
            | null (tail xs) = xs 
            | otherwise = if head xs == head(elimDups (tail xs)) then elimDups(tail xs)  else head xs : elimDups(tail xs) 

-- -- parte d
-- split :: [a] -> ([a], [a])
-- split xs | null xs = (xs, xs)
--          | otherwise = if  
            
-- parte e
-- No funciona para lista vacia
maxInd :: Ord a => [a] -> (a, Int)
maxInd xs | null (tail xs) = (head xs, 0)
          | otherwise = 
            let (valor, indice) = maxInd(tail xs) in
            if head xs >= valor then (head xs, 0) else (valor, indice + 1)

-- parte f
merge :: Ord a => [a] -> [a] -> [a]
merge xs ys | null xs && null ys = []
            | null xs = ys
            | null ys = xs
            | otherwise = if head xs <= head ys then head xs : merge(tail xs) ys else head ys : merge xs (tail ys)