CREATE TABLE EntrenadoresPokemones (
	e_id INT NOT NULL,
	p_id INT NOT NULL,
	PRIMARY KEY (e_id, p_id),
	FOREIGN KEY (e_id) REFERENCES Entrenadores(e_id),
	FOREIGN KEY (p_id) REFERENCES Pokemones(p_id),
	CONSTRAINT UQ_EntrenadoresPokemones UNIQUE (p_id)
);

INSERT INTO EntrenadoresPokemones (e_id, p_id)
VALUES
(1,1),
(1,4),
(2,2),
(2,3),
(3,5),
(3,6);