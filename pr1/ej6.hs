-- Ejercicio 6

-- Definiciones globales

type Estudiante = (String, Int, Int, [Curso]) -- (nombre, ci, anioIngreso, cursosAprobados)
type Curso = (String, Int, Int) -- (nombre, codigo, notaAprobacion)

-- Constates para probar

mat1 :: Curso
mat1 = ("Matematica Discreta", 101, 7)

mat2 :: Curso
mat2 = ("Arquitectura de Computadoras", 102, 6)

mat3 :: Curso
mat3 = ("Sistemas Operativos", 103, 8)

mat4 :: Curso
mat4 = ("Programacion 2", 104, 9)

mat5 :: Curso
mat5 = ("Taller de Programacion", 105, 8)

mat6 :: Curso
mat6 = ("Probabilidad y Estadistica", 105, 9)

est1 :: Estudiante
est1 = ("Victoria Firpo", 53593494, 2021, [mat1, mat2, mat3])

est2 :: Estudiante
est2 = ("Nicolas Estefan", 54635323, 2021, [mat4, mat5, mat6])

-- Funciones

returnInfoEstudiante :: Estudiante -> ([Char], Int)
returnInfoEstudiante (a, b, _, _) = (a, b)

returnAnioDeIngreso :: Estudiante -> Int
returnAnioDeIngreso (_, _, a, _) = a

returnCursos :: Estudiante -> Int -> [Int]
returnCursos (_,_,_,cursos) nota = [ cod | (_,cod,notaA) <- cursos, nota == notaA]

returnEstAnio :: [Estudiante] -> Int -> [(String, Int)]
returnEstAnio est anio = [(nom, ci) | (nom,ci,ing,_) <- est, anio == ing]