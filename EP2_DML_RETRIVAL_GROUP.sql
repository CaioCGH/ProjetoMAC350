BEGIN;

	CREATE OR REPLACE FUNCTION select_pessoa(p_query VARCHAR)
	RETURNS TABLE (
		pe_email VARCHAR,
		pe_nusp INT,
		pe_nome VARCHAR
	)

	AS $$
	BEGIN 
		RETURN QUERY SELECT 
		pe_email, 
		cast(pe_nusp as integer), 
		pe_nome

		FROM
		PESSOA
		WHERE
		pe_nome ILIKE p_query;

	END $$

	LANGUAGE plpgsql;
