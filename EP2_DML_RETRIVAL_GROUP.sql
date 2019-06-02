BEGIN;

	CREATE OR REPLACE FUNCTION select_pessoa(p_query VARCHAR)
	RETURNS TABLE (
		email VARCHAR,
		nusp INT,
		nome VARCHAR
	)

	AS $$
	BEGIN 
		RETURN QUERY SELECT 
		pe_nome,
		cast(pe_nusp as integer), 
		cast(pe_email as varchar) 

		FROM
		PESSOA
		WHERE
		pe_nome ILIKE p_query;

	END; $$

	LANGUAGE plpgsql;
COMMIT;
