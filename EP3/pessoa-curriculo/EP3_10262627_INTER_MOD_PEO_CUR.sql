
/*
After creating the extensions, lets create a domain for valid emails
Valid emails follows a specific Request for Comment defined in RFC5322
For more info, see: https://tools.ietf.org/html/rfc5322
*/
CREATE EXTENSION IF NOT EXISTS dblink;

-- DROPAR NUMA ORDEM TOPOLOGICA..
DROP TABLE IF EXISTS rel_adm_curr 	cascade;
DROP TABLE IF EXISTS planeja		cascade;
DROP TABLE IF EXISTS cursa			cascade;
DROP TABLE IF EXISTS oferecimento	cascade;



CREATE TABLE oferecimento(
	of_id 			SERIAL,
	of_pr_id 		SERIAL,
	of_dis_id		SERIAL,
	of_DataInicio 	varchar(10),
	of_Vagas 		int,
	of_Horario 		varchar(80),
	CONSTRAINT pk_oferecimento PRIMARY KEY (of_id),
	CONSTRAINT sk_oferecimento UNIQUE (of_DataInicio, of_pr_id, of_dis_id, of_Horario)
);

/*OLD
CREATE TABLE oferecimento(
	of_id 			SERIAL,
	of_pr_id 		SERIAL,
	of_dis_id		SERIAL,
	of_DataInicio 	varchar(10),
	of_Vagas 		int,
	of_Horario 		varchar(80),
	CONSTRAINT pk_oferecimento PRIMARY KEY (of_id),
	CONSTRAINT sk_oferecimento UNIQUE (of_DataInicio, of_pr_id, of_dis_id, of_Horario),
	FOREIGN KEY(of_pr_id) REFERENCES professor(pr_id),
	FOREIGN KEY(of_dis_id) REFERENCES disciplina(dis_id)
);
*/

CREATE TABLE cursa(
	cur_id 			SERIAL,
	cur_al_id		SERIAL,
	cur_of_id 		SERIAL,
	cur_Nota 		float,
	cur_Freq 		int,
	CONSTRAINT pk_cursa PRIMARY KEY(cur_id),
	CONSTRAINT sk_cursa UNIQUE (cur_al_id, cur_of_id)
);
/*OLD
CREATE TABLE cursa(
	cur_id 			SERIAL,
	cur_al_id		SERIAL,
	cur_of_id 		SERIAL,
	cur_Nota 		float,
	cur_Freq 		int,
	CONSTRAINT pk_cursa PRIMARY KEY(cur_id),
	CONSTRAINT sk_cursa UNIQUE (cur_al_id, cur_of_id),
	FOREIGN KEY(cur_al_id) REFERENCES aluno(al_id),
    FOREIGN KEY(cur_of_id) REFERENCES oferecimento(of_id)
);
*/

CREATE TABLE planeja(
	pla_id 		SERIAL,
	pla_al_id	SERIAL,
	pla_dis_id	SERIAL,
	pla_DataInicio varchar(10),
	CONSTRAINT pk_planeja PRIMARY KEY(pla_id),	
	CONSTRAINT sk_planeja UNIQUE (pla_al_id, pla_dis_id, pla_DataInicio),	
    FOREIGN KEY(pla_al_id) REFERENCES aluno(al_id),
    FOREIGN KEY(pla_dis_id) REFERENCES disciplina(dis_id)
);

CREATE TABLE rel_adm_curr(
	acurr_id			SERIAL,
	acurr_adm_id		SERIAL,
	acurr_curr_id 		SERIAL,
	acurr_DataInicio 	varchar(10),
	acurr_DataTermino 	varchar(10),
	CONSTRAINT pk_rel_adm_curr PRIMARY KEY(acurr_id),
    FOREIGN KEY(acurr_adm_id) REFERENCES administrador(adm_id),
    FOREIGN KEY(acurr_curr_id) REFERENCES curriculo(curr_id)
);



BEGIN;
-- ==============================  INÎCIO DAS FUNÇÕES DE INSERT ============================== 

CREATE OR REPLACE FUNCTION insert_oferecimento(INOUT of_pr_id int, INOUT of_dis_id int, INOUT of_DataInicio text, INOUT of_Vagas int, 
											   INOUT of_Horario text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario)
	VALUES ($1, $2, $3, $4, $5)
	RETURNING of_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_cursa(INOUT cur_al_id int, INOUT cur_of_id int, INOUT cur_Nota float, INOUT cur_Freq int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq)
	VALUES ($1, $2, $3, $4)
	RETURNING cur_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_planeja(INOUT pla_al_id int, INOUT pla_dis_id int, INOUT pla_DataInicio text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio)
	VALUES ($1, $2, $3)
	RETURNING pla_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_adm_curr(INOUT acurr_adm_id int, INOUT acurr_curr_id int, INOUT acurr_DataInicio TEXT, 
											   INOUT acurr_DataTermino TEXT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino)
	VALUES ($1, $2, $3, $4)
	RETURNING acurr_id into id;
END

$$
LANGUAGE plpgsql;


-- ==============================  FIM DAS FUNÇÕES DE INSERT ================================

-- ==============================  INÎCIO DAS FUNÇÕES DE DELETE ============================== 
CREATE OR REPLACE FUNCTION delete_oferecimento(of_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM oferecimento 
	WHERE 
		 oferecimento.of_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_cursa(cur_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM cursa
	WHERE 
		 cursa.cur_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_planeja(pla_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM planeja 
	WHERE 
		 planeja.pla_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_adm_curr(acurr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_adm_curr 
	WHERE 
		 rel_adm_curr.acurr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

-- ==============================  FIM DAS FUNÇÕES DE DELETE ====================================

-- ==============================  INÎCIO DAS FUNÇÕES DE UPDATE =================================
CREATE OR REPLACE FUNCTION update_oferecimento(of_id integer, of_pr_id integer, of_dis_id integer, of_DataInicio integer, of_Vagas integer, of_Horario TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE oferecimento SET of_pr_id = $2, of_dis_id = $3, of_DataInicio = $4, of_Vagas = $5, of_Horario = $6 WHERE oferecimento.of_id = $1;
END
$$  LANGUAGE plpgsql;


-- ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================

-- ==============================  INÎCIO DAS FUNÇÕES DE RETRIEVAL =================================
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

DROP FUNCTION IF EXISTS  get_disciplinas_by_pessoa_id(query_id int);
CREATE OR REPLACE FUNCTION get_disciplinas_by_pessoa_id(query_id int) 
   RETURNS TABLE (
		id 		int,
		Codigo  		varchar,
		Nome    		varchar
)
AS $$
BEGIN
	RETURN QUERY SELECT DISTINCT
		cast(dis_id as integer),
		cast(dis_Codigo as varchar),
		cast(dis_Nome as varchar)
		FROM dblink('dbname=curriculo','SELECT * FROM disciplina') AS (	dis_id int,
		dis_Codigo  		varchar(80),
		dis_Nome    		varchar(80),
		dis_Aula    		int,
		dis_Trabalho 		int,
		dis_PeriodoIdeal 	int,
		dis_Ementa 			varchar(2000),
		dis_Descricao 		varchar(1000))
		INNER JOIN  oferecimento ON dis_id     = of_dis_id
		INNER JOIN  cursa		 ON cur_al_id = query_id;
END; $$
LANGUAGE 'plpgsql';

COMMIT;
