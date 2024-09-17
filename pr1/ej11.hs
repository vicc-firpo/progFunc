-- Ejercicio 11

data Triangulo = Equi Int | Iso Int Int | Esca Int Int Int
    deriving Show

mkTriangulo :: Int -> Int -> Int -> Triangulo
mkTriangulo a b c   | a == b && a == c && b == c = Equi a
                    | a == b = Iso a b  
                    | a == c = Iso a c
                    | b == c = Iso b c
                    | otherwise = Esca a b c