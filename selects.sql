-- SELECTS
SELECT * FROM usuarios;

-- Despliega columnas de nombre y edad de tabla usuarios
SELECT nombre, edad FROM usuarios;

-- Despliega columnas de nombre y edad de tabla de usuarios donde id = 2
SELECT nombre, edad FROM usuarios WHERE id = 2;

-- Despliega todas las columnas de usuarios donde el nombre sea Alejandro
SELECT * FROM usuarios WHERE nombre LIKE 'Alejandro';

-- Despliega todas las columnas de usuarios donde el nombre comience con Al
SELECT * FROM usuarios WHERE nombre LIKE 'Al%'; -- Al__________

-- Despliega todas las columnas de usuarios donde el nombre termine en o
SELECT * FROM usuarios WHERE nombre LIKE '%o';-- _______o

-- Despliega todas las columnas de usuarios donde el nombre termine en o y la edad sea mayor a 24
SELECT * FROM usuarios WHERE nombre LIKE '%o' AND edad > 24;

-- Despliega nombre y edad de la tabla de usuarios donde el nombre termine en 'o' 
-- O edad del usuario sea mayor a 24
SELECT nombre, edad FROM usuarios WHERE nombre LIKE '%o' OR edad > 24;

-- Despliega todas las columnas de la tabla de usuarios donde el nombre termine en o
-- ordenado por edad de mayor a menor
SELECT * FROM usuarios WHERE nombre LIKE '%o' ORDER BY edad DESC;

-- Depliega todas las columnas de la tabla de usuarios donde los usuarios son mayor de edad
-- ordenando alfabéticamente por su nombre
SELECT * FROM usuarios WHERE edad > 18 ORDER BY nombre DESC;



