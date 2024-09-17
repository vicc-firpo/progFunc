-- Ejercicio 3

andC :: Bool -> Bool -> Bool
andC a b = if a then b else False

orC :: Bool -> Bool -> Bool
orC a b = if not b then a else True

andPM :: Bool -> Bool -> Bool
andPM True True = True
andPM _ _ = False

orPM :: Bool -> Bool -> Bool
orPM False False = False
orPM _ _ = True