--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE university_entry (                                             -- Creamos una tabla con el nombre 'university_entry'   --
                                                                            -- y las columnas:                                      --
iduniversity int AUTO_INCREMENT NOT NULL PRIMARY KEY,                       -- iduniversity                                         --
forename VARCHAR(100) NOT NULL,                                             -- forename                                             --
surname VARCHAR(100) NOT NULL,                                              -- surname                                              --
career VARCHAR(250) NOT NULL,                                               -- career                                               --
age int,                                                                    -- age                                                  --
graduated boolean NOT NULL	                                                -- graduated                                            --
                                                                            --                                                      --
);                                                                          --                                                      --

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE users                                                           -- Alteramos la configuracion de la tabla 'users'       --
                                                                            --                                                      --
ADD iduniversity int;                                                       -- añadimos la columna 'iduniversity' (Numeros Enteros) --

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE users                                                           -- Alteramos la configuracion de la tabla 'users'                       --
                                                                            --                                                                      --
ADD CONSTRAINT fk_university                                                -- Añadimos la restriccion 'fk_university' que implica                  --
FOREIGN KEY(iduniversity) REFERENCES university_entry(iduniversity);        -- el añadido de una foreign key entre la columna iduniversity de la    --
                                                                            -- tabla users con la columna iduniversity de la tabla university_entry --

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------