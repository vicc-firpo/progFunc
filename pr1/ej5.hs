-- Ejercicio 5

type Fecha = (Int, Int, Int)

calcularEdad :: Fecha -> Fecha -> Int
calcularEdad (x, y, z) (a, b, c) = if z > c then 0 else
                                                    if y < b then c - z else
                                                                        if y == b && x <= a then c - z else c - z - 1