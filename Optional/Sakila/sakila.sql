-- Consulta 1
-- 1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de ciudad_id = 312? 
-- Tu consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
JOIN address ON address.address_id = customer.customer_id
JOIN city ON city.city_id = address.city_id
WHERE city.city_id = 312;

-- Consulta 2
-- ¿Qué consulta ejecutarías para obtener todas las películas de comedias? 
-- Tu consulta debe devolver el título de la película, la descripción, el año de 
-- lanzamiento, la clasificación, las características especiales y el género (categoría). 
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name = 'Comedy';

-- Consulta 3
-- ¿Qué consulta ejecutarías para obtener todas las películas por actor_id=5? 
-- Tu consulta debe devolver el id del actor, el nombre del actor, 
-- el título de la película, la descripción y el año de lanzamiento. 
SELECT * 
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE actor.actor_id = 5;

-- Consulta 4
-- 4. ¿Qué consulta ejecutarías para obtener todos los clientes 
-- en store_id=1 y dentro de estas ciudades (1, 42, 312 y 459)?
-- Tu consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente. 
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
JOIN address ON address.address_id = customer.address_id
WHERE store_id = 1 and address.city_id in(1, 42, 312, 459);

-- Consulta 5
-- ¿Qué consulta ejecutarías para obtener todas las películas con una 
-- "calificación = G" y una "característica especial = detrás de escena", unidas por actor_id = 15?  
-- Tu consulta debe devolver el título de la película, la descripción, el año de lanzamiento, 
-- la clasificación y la característica especial. Sugerencia: puede usar 
-- la función LIKE para obtener la parte “detrás de escena”. 
SELECT * 
FROM film 
JOIN film_actor ON film_actor.film_id = film.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE film.rating = 'G' AND film.special_features like '%Behind the Scenes%' AND actor.actor_id = 15;

-- Consulta 6
-- ¿Qué consulta ejecutarías para obtener todos los actores que se unieron al film_id = 369? 
-- Tu consulta debe devolver film_id, título, actor_id y actor_name
SELECT film.film_id, film.title, actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE film.film_id = 369;

-- Consulta 7
-- 7. ¿Qué consulta ejecutarías para obtener todas las películas de drama con una tarifa de arriendo de 2,99? 
-- Tu consulta debe devolver el título de la película, 
-- la descripción, el año de lanzamiento, la clasificación, las características especiales y el género (categoría). 
SELECT film.title, film.description, film.release_year, film.rating, category.name
FROM film 
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name = 'Drama' AND film.rental_rate = 2.99;

-- Consulta 8
-- ¿Qué consulta ejecutarías para obtener todas las películas de acción que 
-- estén unidas por SANDRA KILMER? Tu consulta debe devolver el título de la película, 
-- la descripción, el año de lanzamiento, la clasificación, 
-- las características especiales, el género (categoría) y el nombre y apellido del actor. 
SELECT film.title, film.description, film.release_year, film.rating, category.name, CONCAT(actor.first_name, ' ', actor.last_name) AS actor_nombre
FROM actor 
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name = 'Action' AND CONCAT(actor.first_name, ' ', actor.last_name) = 'SANDRA KILMER';












