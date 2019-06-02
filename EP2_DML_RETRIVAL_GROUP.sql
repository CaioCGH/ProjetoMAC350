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

	CREATE OR REPLACE FUNCTION alunos_disciplina(id integer)
	RETURNS TABLE (
		nome_aluno VARCHAR,
		id_disciplina int
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

	CREATE OR REPLACE FUNCTION professor_disciplina(id integer)
	RETURNS TABLE (
		nome_professor VARCHAR,
		id_disciplina int
	)
	AS $$
	BEGIN 
		RETURN QUERY SELECT 
		cast(pe_nome as varchar),
		cast(of_dis_id as integer)

		FROM
		PESSOA INNER JOIN OFERECIMENTO ON pessoa.pe_id = oferecimento.of_dis_id
		WHERE
		of_dis_id = id;

	END; $$

	LANGUAGE plpgsql;

	CREATE OR REPLACE FUNCTION disciplinas_modulo(id integer)
	RETURNS TABLE (
		nome_disciplina VARCHAR,
		id_disciplina int
	)
	AS $$
	BEGIN 
		RETURN QUERY SELECT 
		cast(dis_nome as varchar),
		cast(dis_id as integer)

		FROM
		REL_DIS_MOD INNER JOIN DISCIPLINA ON rel_dis_mod.dmod_dis_id = disciplina.dis_id 
		WHERE
		dmod_mod_id = id;

	END; $$

	LANGUAGE plpgsql;

	CREATE OR REPLACE FUNCTION modulos_trilha(id integer)
	RETURNS TABLE (
		nome_modulo VARCHAR,
		id_trilha int
	)
	AS $$
	BEGIN 
		RETURN QUERY SELECT 
		cast(mod_nome as varchar),
		cast(mtr_tr_id as integer)

		FROM
		REL_TR_MOD INNER JOIN MODULO ON rel_tr_mod.mtr_mod_id = MODULO.mod_id 
		WHERE
		mtr_tr_id = id;

	END; $$

	LANGUAGE plpgsql;

COMMIT;
