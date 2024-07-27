ALTER TABLE Entrenadores
ADD Ciudad VARCHAR;

ALTER TABLE Entrenadores
ALTER COLUMN Nombre VARCHAR(50);

ALTER TABLE Entrenadores
ALTER COLUMN Ciudad VARCHAR (50);

ALTER TABLE Pokemones
ALTER COLUMN Estadisticas INT;

ALTER TABLE Pokemones
DROP COLUMN Estadisticas;
