CREATE TABLE Batallas (
	id_batalla INT PRIMARY KEY IDENTITY,
	p_id1 INT NOT NULL,
	p_id2 INT NOT NULL,
	Fecha DATE,
	Resultado VARCHAR(50),
	CONSTRAINT FK_Entrenador1 FOREIGN KEY (p_id1) REFERENCES EntrenadoresPokemones(p_id),
	CONSTRAINT FK_Entrenador2 FOREIGN KEY (p_id2) REFERENCES EntrenadoresPokemones(p_id));


INSERT INTO Batallas (p_id1, p_id2, Fecha, Resultado)
VALUES
(1,2, '2024-07-25', 'Ash gana');
