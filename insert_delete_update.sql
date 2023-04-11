SELECT * FROM usuarios;

-- Guardamos un nuevo registro en usuarios
INSERT INTO usuarios (nombre, edad, direccion_id)  VALUES ('Juana', 30, 3);

-- Eliminamos un registro con id = 10
DELETE FROM usuarios WHERE id = 10;
-- DELETE FROM usuarios WHERE id BETWEEN 4 AND 7; Borra 4-7
-- DELETE FROM usuarios WHERE id IN (4, 8, 16); Borra 4, 8, 16
-- DELETE FROM usuarios WHERE nombre = 'Juana'

-- Borrar tabla: DROP TABLE nombre_tabla
-- Borrar los datos de tabla, y comienza el id desde 1: TRUNCATE nombre_tabla

-- Actualizamos la columna de edad al registro con id = 8
UPDATE usuarios SET edad = 31 WHERE id = 8;

-- Actualizamos columna de nombre y edad del registro id = 2
UPDATE usuarios SET nombre = 'Martinina', edad = 65 WHERE id = 2;
