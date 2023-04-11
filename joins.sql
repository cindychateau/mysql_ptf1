SELECT * FROM usuarios;

-- Desplegar la unión de usuarios y direcciones
-- Haciendo una unión con direccion_id(tabla: usuarios)
-- y el identificador de tabla de direcciones
SELECT * FROM usuarios JOIN direcciones ON usuarios.direccion_id = direcciones.id;

SELECT nombre, edad, calle FROM usuarios 
JOIN direcciones ON usuarios.direccion_id = direcciones.id
WHERE nombre LIKE 'E%';

-- Desplegar la unión entre pedidos y usuarios
-- haciendo la unión con usuario_id (tabla:pedidos) = tabla usuarios el id
SELECT * FROM pedidos
JOIN usuarios ON pedidos.usuario_id = usuarios.id;

-- Desplegar la unión de usuarios, usuarios_has_hobbies y hobbies
-- DOS UNIONES
-- 1.- Unir usuarios y usuarios_has_hobbies con de mi tabla usuarios el id = usuario_id(tabla:usuarios_has_hobbies)
-- 2.- Unir usuarios_has_hobbies y hobbies con usuarios_has_hobbies la columna hobbie_id = tabla hobbies el id
SELECT nombre, actividad FROM usuarios
JOIN usuarios_has_hobbies ON usuarios_has_hobbies.usuario_id = usuarios.id
JOIN hobbies ON usuarios_has_hobbies.hobbie_id = hobbies.id
WHERE nombre LIKE '%a';

SELECT nombre, COUNT(actividad) FROM usuarios
JOIN usuarios_has_hobbies ON usuarios_has_hobbies.usuario_id = usuarios.id
JOIN hobbies ON usuarios_has_hobbies.hobbie_id = hobbies.id
GROUP BY nombre;
