-- Ejercicio 1

maxNum :: Integer -> Integer -> Integer 
maxNum x y = if (x >= y) then x else y

minNum :: Integer -> Integer -> Integer
minNum x y = if (x <= y) then x else y

square :: Integer -> Integer
square x = x * x

sumsqrs :: Integer ->Integer -> Integer -> Integer
sumsqrs x y z = square(maxNum x y) + square(maxNum z (minNum x y)) 