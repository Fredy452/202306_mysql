-- Consuta 1
-- ¿Qué consulta ejecutarías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de habla del idioma.  
-- Tu consulta debe ordenar el resultado por porcentaje de habla del idioma en orden descendente. (1)
SELECT countries.name AS Pais, languages.language AS Idioma, languages.percentage AS Porcentaje
FROM countries
JOIN languages ON languages.country_id = countries.id
WHERE languages.language = 'Slovene'
ORDER BY percentage DESC;

-- Consulta 2
-- ¿Qué consulta ejecutarías para mostrar el número total de ciudades de cada país?  
-- Tu consulta debe devolver el nombre del país, el idioma y el número total de ciudades. 
-- Tu consulta debe ordenar el resultado por el número de ciudades en orden descendente. (3) 
SELECT Pais, Idiomas, Ciudades
FROM (
    SELECT countries.name AS Pais, GROUP_CONCAT(' ', languages.language) AS Idiomas, COUNT(cities.id) AS Ciudades
    FROM countries
    LEFT JOIN cities ON cities.country_id = countries.id
    LEFT JOIN languages ON languages.country_id = countries.id
    GROUP BY countries.name
) AS subconsulta
ORDER BY Ciudades DESC;

-- Consulta 3
-- ¿Qué consulta ejecutarías para obtener todos ciudades de México con una población mayor a 500,000? 
-- Tu consulta debe ordenar el resultado por población en orden descendente. (1) 
SELECT Ciudad, Poblacion 
FROM (
    SELECT cities.name AS Ciudad, cities.population AS Poblacion
    FROM countries
    LEFT JOIN cities ON cities.country_id = countries.id
    WHERE countries.code = 'MEX' AND cities.population > 500000
) AS subconsulta
ORDER BY Poblacion DESC;

-- Consulta 4
-- ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje de habla mayor a 89%? 
-- Tu consulta debe ordenar el resultado por porcentaje de habla en orden descendente. (1) 
SELECT countries.name AS Pais, languages.language AS Idioma, languages.percentage AS Porcentaje
FROM countries
JOIN languages ON languages.country_id = countries.id
WHERE languages.percentage > 89
ORDER BY percentage DESC;

-- Consulta 5
-- 5. ¿Qué consulta ejecutarías para obtener todos los 
-- países con un área de superficie menor a 501 y población mayor a 100,000? (2) 
SELECT countries.name AS Pais, countries.surface_area AS Territorio, countries.population AS Poblacion 
FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000
ORDER BY countries.population DESC;

-- Consulta 6
-- ¿Qué consulta ejecutarías para obtener países solo con monarquía constitucional (Constitional Monarchy), 
-- un capital superior a 200 y una esperanza de vida mayor (life_expectancy) a 75 años?  (1)
SELECT c.name AS Pais, c.government_form AS Forma_Gobierno, c.life_expectancy AS Expectativa
FROM countries AS c
WHERE c.government_form = 'Constitutional Monarchy' AND c.capital > 200 AND c.life_expectancy > 75;

-- Consulta 7
-- 7. ¿Qué consulta ejecutarías para obtener todas las ciudades de Argentina dentro del distrito de 
-- Buenos Aires con una población mayor a 500,000 habitantes?  
-- La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población.  (2) 
SELECT Ciudad, Poblacion, Distrito
FROM (
    SELECT cities.name AS Ciudad, cities.population AS Poblacion, cities.district AS Distrito
    FROM countries
    LEFT JOIN cities ON cities.country_id = countries.id
    WHERE countries.code = 'ARG' AND cities.district = 'Buenos Aires' AND cities.population > 500000
) AS subconsulta
ORDER BY Poblacion DESC;

-- Consulta 8
-- ¿Qué consulta ejecutarías para resumir el número de países en cada región? 
-- Tu consulta debe mostrar el nombre de la región y el número de países. 
-- Además, debe ordenar el resultado por el número de países en orden descendente. (2) 
SELECT Region, N°_Paises
FROM (
    SELECT countries.region AS Region, COUNT(countries.id) AS N°_Paises
    FROM countries
    GROUP BY countries.region
) AS subconsulta
ORDER BY N°_Paises DESC;

-- Si llegaste hasta acá señor instructor déjame decirte que me costó un día entero hacer esto así que 
-- más vale que este todo bien, atte. un estudiante todo estresado 
