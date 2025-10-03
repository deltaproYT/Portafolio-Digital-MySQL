--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TABLA 1 --
CREATE TABLE dni_users (                                                -- Creamos una tabla con el nombre 'dni_users'                         --
                                                                        -- y las columnas:                                                     --
dni int NOT NULL PRIMARY KEY,                                           -- dni                                                                 --
country varchar(250),                                                   -- country                                                             --
dni_creation_date date,                                                 -- dni_creation_date                                                   --
data_entry_date datetime DEFAULT (current_timestamp()),                 -- data_entry_date                                                     --
penal_antecedents bool NOT NULL,                                        -- penal_antecedents                                                   --
idusers int NOT NULL,                                                   -- iduser                                                              --
CHECK(dni_creation_date >= DATE_SUB('2025-10-03', INTERVAL 18 YEAR)),   -- Realizamos un chequeo donde los participantes sean mayores de edad  --
FOREIGN KEY(idusers) REFERENCES users(idusers)                          -- Aplicamos una foreign key ubicada en la tabla 'users' en la fila    --
                                                                        -- idusers                                                             --
);                                                                      --                                                                     --
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- FOREIGN KEY --
-- FOREIGN KEY('<columna dentro de la tabla>') REFERENCES '<Tabla a concatenar>'('<columna de la tabla a concatenar>') 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------