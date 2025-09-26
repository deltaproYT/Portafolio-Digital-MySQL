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
