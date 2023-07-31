-- 1. Consulta: crea 3 usuarios nuevos
INSERT INTO users(nombre, apellido, correo_electronico, created_at, updated_at) 
VALUES('Marcos', 'Alonso', 'correo@correo.com', now(), now());
INSERT INTO users(nombre, apellido, correo_electronico, created_at, updated_at) 
VALUES('Lucas', 'Fernandez', 'correo2@correo.com', now(), now());
INSERT INTO users(nombre, apellido, correo_electronico, created_at, updated_at) 
VALUES('Jose', 'Duran', 'correo3@correo.com', now(), now());

-- 2. Consulta: recupera todos los usuarios
SELECT * FROM users;

-- 3. Consulta. recupera el primer usuario que usa su dirección de correo electrónico
SELECT * 
FROM users
WHERE correo_electronico IS NOT NULL;

-- 4. Consulta: recupera el último usuario que usa su id
SELECT * FROM users WHERE users.id = 1;

-- 5. Consulta: cambia el usuario con id=3 para que su apellido sea Panqueques
UPDATE users SET nombre = 'Panqueque'
WHERE users.id = 3;

-- 6. Consulta: elimina el usuario con id=2 de la base de datos
DELETE FROM users 
where id = 2;

-- 7. Consulta: obtén todos los usuarios, ordenados por su nombre
SELECT * FROM users
ORDER BY nombre;

-- 8. Consulta BONUS: obtén todos los usuarios, ordenados por su nombre en orden descendente
SELECT * FROM users
ORDER BY nombre DESC;