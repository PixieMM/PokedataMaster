BEGIN TRANSACTION;

DECLARE @id_pokemon INT = 1 -- ID del Pokemon a eliminar

BEGIN TRY
	-- Eliminar registros en la tabla Batallas
	DELETE b
	FROM Batallas b
	JOIN EntrenadoresPokemones ep1 ON b.p_id1 = ep1.p_id
	JOIN EntrenadoresPokemones ep2 ON b.p_id2 = ep2.p_id
	WHERE ep1.p_id = @id_pokemon OR ep2.p_id = @id_pokemon;

	-- Eliminar registros en la tabla EntrenadoresPokemones
	DELETE ep
	FROM EntrenadoresPokemones ep
	WHERE ep.p_id = @id_pokemon;

	--Eliminar el Pokemon de la tabla Pokemones
	DELETE FROM Pokemones
	WHERE p_id = @id_pokemon;

	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
	-- Manejo del error
	PRINT 'Error al eliminar el Pokemon y sus registros relacionados';
END CATCH;