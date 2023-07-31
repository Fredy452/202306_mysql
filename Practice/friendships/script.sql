-- 1. Consulta: crea 6 usuarios nuevos
INSERT INTO users(first_name, last_name, email) 
VALUES("Mark", "Otto", "corre1@correo.com"),
	  ("Frank", "Dimitovish", "corre2@correo.com"),
      ("Josept", "Martinez", "corre3@correo.com"),
      ("Lucas", "Sham", "corre4@correo.com"),
      ("Milk", "Maj", "corre5@correo.com"),
      ("Jos", "Hu", "corre6@correo.com");

-- 2. Consulta: haz que el usuario 1 sea amigo del usuario 2, 4 y 6
INSERT INTO friendships(user_id, friend_id) VALUES(1, 2), (1, 4), (1, 6);

-- 3. Consulta: haz que el usuario 2 sea amigo del usuario 1, 3 y 5
INSERT INTO friendships(user_id, friend_id) VALUES(2, 1), (2, 3), (2, 5);

-- 4. Consulta: haz que el usuario 3 sea amigo del usuario 2 y 5
INSERT INTO friendships(user_id, friend_id) VALUES(3, 2), (3, 5);

-- 5.Consulta: haz que el usuario 4 sea amigo del usuario 3
INSERT INTO friendships(user_id, friend_id) VALUES(4, 3);

-- 6. Consulta: haz que el usuario 5 sea amigo del usuario 1 y 6
INSERT INTO friendships(user_id, friend_id) VALUES(5, 1), (5, 6);

-- 7. Consulta: haz que el usuario 6 sea amigo del usuario 2 y 3
INSERT INTO friendships(user_id, friend_id) VALUES(6, 2), (6, 3);

-- 8. Consulta: muestra las relaciones creadas como se muestra en la imagen de arriba
SELECT concat(users.first_name,' ',users.last_name) as Usuario, concat(user2.first_name, ' ', user2.last_name) as Amigo, user2.id as User_ID
FROM users 
JOIN friendships ON friendships.user_id = users.id 
LEFT JOIN users as user2 ON friendships.friend_id = user2.id;

-- 9. Consulta NINJA: Devuelve todos los usuarios que son amigos del primer usuario,
-- asegúrate de que sus nombres se muestren en los resultados.
SELECT concat(user2.first_name, ' ', user2.last_name)
FROM users 
JOIN friendships ON friendships.user_id = users.id 
LEFT JOIN users as user2 ON friendships.friend_id = user2.id
WHERE friendships.user_id = 1;

-- 10. Consulta NINJA: Devuelve el recuento de todas las amistades
SELECT COUNT(*)
FROM friendships;

-- 11. Consulta NINJA: averigua quién tiene más amigos y devuelve la cuenta de sus amigos.


-- 12. Consulta NINJA: Devuelve los amigos del tercer usuario en orden alfabético

