CREATE TABLE Pokemones (p_id INT NOT NULL PRIMARY KEY, Nombre NVARCHAR(50), Tipo NVARCHAR (50), Habilidad NVARCHAR (50), Estadisticas INT);

INSERT INTO Pokemones (p_id, Nombre, Tipo, Habilidad)
VALUES
(1, 'Charmander', 'Fuego', 'Mar Llamas', 30),
(2, 'Squirtle', 'Agua', 'Torrente', 45),
(3, 'Psyduck', 'Agua', 'Humedad', 50),
(4, 'Pikachu', 'Electrico', 'Estatica', 100),
(5, 'Geodude', 'Roca', 'Cabeza roca', 32),
(6, 'Onix', 'Roca', 'Robustez', 95);