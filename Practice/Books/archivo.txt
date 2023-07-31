-- 1. Consulta: crea 5 usuarios diferentes: 
-- Jane Austen, Emily Dickinson, Fyodor Dostoevsky, William Shakespeare, Lau Tzu
INSERT INTO usuarios(nombre, apellido) VALUES("Jane", "Austen"), ("Emily", "Dickinson"), ("Fyodor", "Dostoevsky"), ("William", "Shakespeare"), ("Lau", "Tzu");

-- 2. Consulta: crea 5 libros con los siguientes nombres: C Sharp, Java, Python, PHP, Ruby
INSERT INTO libros(titulo, numero_pagina) VALUES("C Sharp", 12), ("Java", 50), ("Python", 100), ("PHP", 30), ("Ruby", 50);

-- 3.Consulta: cambia el nombre del libro de C Sharp a C#
UPDATE libros SET titulo = "C#" 
WHERE id = 1;

-- 4. Consulta: cambia el nombre del cuarto usuario a Bill
UPDATE usuarios SET nombre = "Bill"
WHERE id = 4;

-- 5. Consulta: haz que el primer usuario marque como favorito los 2 primeros libros
-- Me olvide de poner en singular los campos
INSERT INTO favoritos(usuarios_id, libros_id) values(1, 1), (1, 2);

-- 6. Consulta: haz que el segundo usuario marque como favorito los primeros 3 libros
INSERT INTO favoritos(usuarios_id, libros_id) values(2, 1), (2, 2), (2, 3);

-- 7. Consulta: haz que el tercer usuario marque como favorito los 4 primeros libros
INSERT INTO favoritos(usuarios_id, libros_id) values(3, 1), (3, 2), (3, 3), (3, 4);

-- 8. Consulta: Haz que el cuarto usuario marque como favorito todos los libros
INSERT INTO favoritos(usuarios_id, libros_id) values(4, 1), (4, 2), (4, 3), (4, 4), (4, 5);

-- 9. Consulta: recupera todos los usuarios que marcaron como favorito el tercer libro
SELECT *
FROM usuarios
JOIN favoritos ON favoritos.usuarios_id = usuarios.id
JOIN libros ON libros.id = favoritos.libros_id
WHERE favoritos.libros_id = 3;

-- 10. Consulta: elimina el primer usuario de los favoritos del tercer libro
DELETE FROM favoritos WHERE usuarios_id = 2 AND libros_id = 3;

-- 11. Consulta: Haz que el quinto usuario marque como favorito el segundo libro
INSERT INTO favoritos(usuarios_id, libros_id) values(5, 2);

-- 12. Encuentra todos los libros que el tercer usuario marcó como favoritos
SELECT usuarios.apellido as Nombre, libros.titulo as Titulo
FROM usuarios
JOIN favoritos ON favoritos.usuarios_id = usuarios.id
JOIN libros ON libros.id = favoritos.libros_id
WHERE favoritos.usuarios_id = 3;

-- 13. Consulta: encuentra todos los usuarios que marcaron como favorito el quinto libro
SELECT usuarios.apellido as Nombre, libros.titulo as Titulo
FROM usuarios
JOIN favoritos ON favoritos.usuarios_id = usuarios.id
JOIN libros ON libros.id = favoritos.libros_id
WHERE favoritos.libros_id = 5;
