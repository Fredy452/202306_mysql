-- Configurando worbench
-- 1. Usando Select
SELECT *
FROM users;
-- 2. Actualizando Datos
UPDATE users SET first_name = 'Messi'
WHERE users.id = 1;
-- 3. Incertando
INSERT INTO users(first_name, last_name, handle, birthday, created_at, updated_at)
VALUES('Marcos', 'Cacerez', 'maros123', now(), now(), now());
-- 4. Borrando
DELETE FROM users 
WHERE users.id = 5;



