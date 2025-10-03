--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE subjects (                                     -- Creamos una tabla con el nombre 'subjects'   -- 
                                                            -- y las columnas:                              --
idsubjects int AUTO_INCREMENT NOT NULL PRIMARY KEY,         -- idsubjects                                   --
subject VARCHAR(100) NOT NULL,                              -- subject                                      --
difficulty VARCHAR(50),                                     -- difficulty                                   --
finished boolean NOT NULL                                   -- finished                                     --
                                                            --                                              --
);                                                          --                                              --

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE intermediate_usr_sbj (                             -- Creamos una tabla con el nombre 'intermediate_usr_sbj'                                                               --
                                                                -- y las columnas:                                                                                                      --
idusr_sbj int AUTO_INCREMENT NOT NULL PRIMARY KEY,              -- idusr_sbj                                                                                                            --
idsubjects int,                                                 -- idsubjects                                                                                                           --
idusers int,                                                    -- idusers                                                                                                              --
FOREIGN KEY (idsubjects) REFERENCES subjects(idsubjects),       -- Activa una Foreign key entre la columna idsubjects de la tabla 'subjects y la columna idsubjects de la tabla actual  --
FOREIGN KEY (idusers) REFERENCES users(idusers),                -- Activa una Foreign key entre la columna idusers de la tabla 'users' y la columna idusers de la tabla actual          --
UNIQUE (idusers, idsubjects)                                    -- Añade el modificador 'UNIQUE' a las columnas idusers e idsubjects                                                    --
                                                                --                                                                                                                      --
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------