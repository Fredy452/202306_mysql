-- 1. Consulta: crea 3 dojos nuevos
INSERT INTO dojos(nombre) VALUES('Programacion');
INSERT INTO dojos(nombre) VALUES('Diseño');
INSERT INTO dojos(nombre) VALUES('Prueba');
-- 2. Consulta: elimina los 3 dojos que acabas de crear
DELETE FROM dojos WHERE dojos.id in (1,2,3);
-- 3. Consulta: crea 3 dojos nuevos
INSERT INTO dojos(nombre) VALUES('Programacion'), ('Diseño'), ('Prueba');
-- 4. Consulta: crea 3 ninjas que pertenezcan al primer dojo
INSERT INTO ninjas(nombre, apellido, edad, dojo_id) VALUES('Jose', 'Cardozo', 12, 4),
														  ('Ariel', 'Ben', 12, 4),
                                                          ('Arturo', 'Cardozo', 12, 4);
-- 5. Consulta: crea 3 ninjas que pertenezcan al segundo dojo
INSERT INTO ninjas(nombre, apellido, edad, dojo_id) VALUES('Luis', 'Cardozo', 12, 5),
														  ('Marcos', 'Cardozo', 12, 5),
                                                          ('Pedro', 'Cardozo', 12, 5);
-- 6. Consulta: crea 3 ninjas que pertenezcan al tercer dojo
INSERT INTO ninjas(nombre, apellido, edad, dojo_id) VALUES('Diego', 'Perez', 12, 6),
														  ('Mario', 'Ar', 12, 6),
                                                          ('En', 'Joz', 12, 6);
                                                          
-- 7.Consulta: recupera todos los ninjas del primer dojo
SELECT * FROM ninjas WHERE dojo_id = 4;
-- 8. Consulta: recupera todos los ninjas del último dojo
SELECT * FROM ninjas WHERE dojo_id = 6;
-- 9. Consulta: recupera el dojo del último ninja
SELECT dojos.nombre
FROM dojos
JOIN ninjas ON ninjas.dojo_id = dojos.id
WHERE ninjas.id = 11;
