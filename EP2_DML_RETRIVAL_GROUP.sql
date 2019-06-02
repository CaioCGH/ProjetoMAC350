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

	CREATE OR REPLACE FUNCTION alunos_curso(id integer)
	RETURNS TABLE (
		nome_aluno VARCHAR,
		id_curso int
	)
	AS $$
	BEGIN 
		RETURN QUERY SELECT 
		cast(pe_nome as varchar),
		cast(cur_id as integer)

		FROM
		PESSOA INNER JOIN CURSA ON pessoa.pe_id = cursa.cur_al_id
		WHERE
		cur_id = id;

	END; $$

	LANGUAGE plpgsql;

COMMIT;
