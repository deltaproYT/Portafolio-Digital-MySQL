-- SELECT --
SELECT * FROM users; --Selecciona TODAS (*) las columnas de la database 'users' --

SELECT idusers, username FROM users; -- Selecciona las columnas 'idusers' y 'username' de la database 'users' --


-- SELECT DISTINCT --
SELECT DISTINCT email FROM users; -- Selecciona solo los valores sin repetir de la columna 'email' de la database 'users' --


-- SELECT WHERE --
SELECT * FROM users WHERE email = 'Gmail.com'; -- Selecciona todas las columnas del database si el dato en la columna email es 'Gmail' --


-- ORDER BY --
SELECT * FROM users ORDER BY email; -- Selecciona TODAS las columnas de la database 'users' y las ordena de manera ascendente (por defecto) --

SELECT * FROM users ORDER BY email ASC; -- Selecciona TODAS las columnas de la database 'users' y las ordena de manera ascendente --

SELECT * FROM users ORDER BY email DESC; -- Selecciona TODAS las columnas de la database 'users' y las ordena de manera descendente --

-- WHERE ORDER BY --
SELECT * FROM users WHERE email = 'Gmail.com' ORDER BY last_name; -- Selecciona TODAS las columnas de la database donde email sea igual a 'Gmail' y las ordena por apellido de forma ascendente (por defecto) --


-- WHERE LIKE --
SELECT * FROM users WHERE email LIKE 'Gmail.com'; -- Selecciona todas las columnas del database 'users' si el dato en la columna email es parecido a 'Gmail' --

SELECT * FROM users WHERE email LIKE '%net'; -- Selecciona TODAS las columnas de la database 'users' si el dato en la columna email tiene terminacion 'net' --

SELECT * FROM users WHERE first_name LIKE 'Y%'; -- Selecciona TODAS las columnas de la database 'users' si el dato en la columna first_name empieza con 'y' --

SELECT * FROM users WHERE birth_date LIKE '%-07-%'; -- Selecciona TODAS las columnas de la database 'users' si el dato en la columna birth_date tiene el mes '07' --


-- COMPUERTAS LOGICAS: AND - OR - NOT --
SELECT * FROM users WHERE NOT birth_date LIKE '%-07-%'; -- Selecciona TODAS las columnas de la database 'users' si el dato en la columna birth_date NO tiene el mes '07' --

SELECT * FROM users WHERE first_name LIKE 'Y%' AND last_name LIKE 'C%'; -- Selecciona TODAS las columnas de la database 'users' si el dato en la columna first_name empieza con 'Y' Y el dato en la columna last-name empiece con 'C'--

SELECT * FROM users WHERE email LIKE '%net' OR email LIKE '%arg'; -- Selecciona TODAS las columnas de la database 'users' si el dato en la columna email tiene terminación 'net' O con la terminación 'arg'--


-- SELECT LIMIT --
 SELECT * FROM users LIMIT 5;  -- Selecciona TODAS las columnas y las primeras 5 filas de la database 'users' 


-- NULL --
SELECT * FROM users WHERE email IS NULL; -- Selecciona TODAS las columnas de la database 'users' donde el dato de la columna email esta vacio --

SELECT * FROM users WHERE email IS NOT NULL; -- Selecciona TODAS las columnas de la database 'users' donde el dato de la columna email NO esta vacio --

-- MIN() - MAX() --
SELECT MAX(age) FROM users; -- Imprime el valor maximo de la columna 'age' --

SELECT MIN(age) FROM users; -- Imprime el valor minimo de la columna 'age' --


-- COUNT() --
SELECT COUNT(*) FROM users; -- Imprime la cantidad de usuarios con los datos diferentes a NULL (9) --

SELECT COUNT(email) FROM users; -- Imprime la cantidad de usuarios con los datos en la columna email diferentes a NULL (7) --


-- SUM() --
SELECT SUM(age) FROM users; -- Imprime la sumatoria de todos los valores de la columna 'age' --


-- AVG() --
SELECT AVG(age) FROM users; -- Imprime el promedio de todos los valores de la columna 'age'


-- IN --
SELECT * FROM users WHERE first_name IN ('Leonard','Sheldon'); -- Busca las filas que contengan los datos 'Leonard' y 'Sheldon' en la columna 'first_name' --


-- BETWEEN --
SELECT * FROM users WHERE age BETWEEN 15 AND 30; -- Busca las filas de datos donde el dato de la columna 'age' este ENTRE 15 y 30 --


-- AS --
SELECT last_name AS 'surnames' FROM users; -- Renombra la columna 'last_name' como 'surnames' --


-- CONCAT --
SELECT CONCAT(first_name, ' ', last_name) FROM users; -- Concadena los datos de la clumna first_name y last_name y añade un espacio entre ellos (no añade el espacio de manera automatica) --

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name' FROM users; -- Concadena los datos de la clumna first_name y last_name y añade un espacio entre ellos (no añade el espacio de manera automatica) y lo renombra como 'full_name' --


-- GROUP BY --
SELECT age FROM users GROUP BY age; -- Selecciona la columna 'age' y los agrupa por sus valores unicos --

SELECT age FROM users GROUP BY age ORDER BY age DESC; -- Selecciona la columna 'age', los agrupa por sus valores unicos y los ordena de forma descendente --

SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age DESC; -- Selecciona la columna 'age', los agrupa por sus valores unicos, ubica las cantidades de repeticiones y los ordena de forma descendente --


-- 