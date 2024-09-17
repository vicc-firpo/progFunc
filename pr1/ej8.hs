-- Ejercicio 8

data POrd = PO Double Double
    deriving Show

ordenarPar :: Double -> Double -> POrd
ordenarPar x y = if x <= y then PO x y else PO y x

sumaPOrd :: POrd -> POrd -> POrd
sumaPOrd (PO x1 y1) (PO x2 y2) = PO (x1 + x2) (y1 + y2)

multPOrd :: Double -> POrd -> POrd
multPOrd x (PO x1 y1) = ordenarPar a y1
    where a = x*x1
