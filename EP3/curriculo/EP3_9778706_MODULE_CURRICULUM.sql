
/*
After creating the extensions, lets create a domain for valid emails
Valid emails follows a specific Request for Comment defined in RFC5322
For more info, see: https://tools.ietf.org/html/rfc5322
*/

-- DROPAR NUMA ORDEM TOPOLOGICA..
DROP TABLE IF EXISTS rel_dis_mod cascade;
DROP TABLE IF EXISTS rel_tr_mod  cascade;
DROP TABLE IF EXISTS rel_curr_tri cascade;
DROP TABLE IF EXISTS trilha       cascade;
DROP TABLE IF EXISTS modulo       cascade;
DROP TABLE IF EXISTS curriculo    cascade;
DROP TABLE IF EXISTS prerequisito cascade;
DROP TABLE IF EXISTS disciplina   cascade;

CREATE TABLE disciplina (
	dis_id 				SERIAL,
	dis_Codigo  		varchar(80) NOT NULL,
	dis_Nome    		varchar(80) NOT NULL,
	dis_Aula    		int NOT NULL,
	dis_Trabalho 		int NOT NULL,
	dis_PeriodoIdeal 	int NOT NULL,
	dis_Ementa 			varchar(2000) NOT NULL,
	dis_Descricao 		varchar(1000) NOT NULL,
	CONSTRAINT pk_disciplina PRIMARY KEY (dis_id),
	CONSTRAINT sk_disciplina UNIQUE (dis_codigo)
);

CREATE TABLE prerequisito (
	prq_id					SERIAL,
	prq_dis1_id				SERIAL,
	prq_dis2_id				SERIAL,
	CONSTRAINT prq_id PRIMARY KEY (prq_id),
    FOREIGN KEY(prq_dis1_id) REFERENCES disciplina(dis_id),
    FOREIGN KEY(prq_dis2_id) REFERENCES disciplina(dis_id)
);

CREATE TABLE curriculo (
	curr_id			SERIAL,
	curr_AnoIni 	varchar(10) NOT NULL,
	curr_AnoFim 	varchar(10),
	curr_Curso 		varchar(80) NOT NULL,
	curr_Unidade 	varchar(80) NOT NULL,
	CONSTRAINT pk_curriculo PRIMARY KEY(curr_id),
	CONSTRAINT sk_curriculo UNIQUE (curr_Curso, curr_Unidade, curr_AnoIni) 
);

CREATE TABLE modulo (
	mod_id 		SERIAL,
	mod_Codigo  int NOT NULL,
	mod_Nome    varchar(80) NOT NULL,
	CONSTRAINT pk_modulo PRIMARY KEY(mod_id),
	CONSTRAINT sk_modulo UNIQUE (mod_Codigo)
);

CREATE TABLE trilha (
	tr_id		SERIAL,
	tr_Codigo   int NOT NULL,
	tr_Nome 	varchar(80) NOT NULL,
	CONSTRAINT pk_trilha PRIMARY KEY(tr_id),
	CONSTRAINT sk_trilha UNIQUE (tr_Codigo)
);

CREATE TABLE rel_curr_tri(
	ctr_id  		SERIAL,
	ctr_curr_id		SERIAL,
	ctr_tr_id 		SERIAL,
	ctr_AnoInicio 	varchar(10) NOT NULL,
	ctr_Unidade 	varchar(10) NOT NULL,
	CONSTRAINT pk_rel_curr_tri PRIMARY KEY(ctr_id),	
	CONSTRAINT sk_rel_curr_tri UNIQUE (ctr_AnoInicio, ctr_curr_id, ctr_tr_id, ctr_Unidade),	
    FOREIGN KEY(ctr_curr_id) REFERENCES curriculo(curr_id),
    FOREIGN KEY(ctr_tr_id) REFERENCES trilha(tr_id)
);

CREATE TABLE rel_tr_mod(
	mtr_id		SERIAL,
	mtr_tr_id 	SERIAL,
	mtr_mod_id 	SERIAL,
	CONSTRAINT pk_rel_tr_mod PRIMARY KEY(mtr_id),
    FOREIGN KEY(mtr_tr_id) REFERENCES trilha(tr_id),
    FOREIGN KEY(mtr_mod_id) REFERENCES modulo(mod_id)
);

CREATE TABLE rel_dis_mod(
	dmod_id 		SERIAL,
	dmod_dis_id		SERIAL,
	dmod_mod_id		SERIAL,
	CONSTRAINT pk_rel_dis_mod PRIMARY KEY(dmod_id),
    FOREIGN KEY(dmod_dis_id) REFERENCES disciplina(dis_id),
    FOREIGN KEY(dmod_mod_id) REFERENCES modulo(mod_id)
);



BEGIN;
-- ==============================  INÎCIO DAS FUNÇÕES DE INSERT ============================== 

CREATE OR REPLACE FUNCTION insert_disciplina(INOUT dis_Codigo text, INOUT dis_Nome TEXT, INOUT dis_Aula int, INOUT dis_Trabalho int, 
	                                         INOUT dis_PeriodoIdeal int, INOUT dis_Ementa text, INOUT dis_Descricao text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao) 
	VALUES ($1, $2, $3, $4, $5, $6, $7)
	RETURNING dis_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_prerequisito(INOUT prq_dis1_id int, INOUT prq_dis2_id int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) 
	VALUES ($1, $2)
	RETURNING prq_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_curriculo(INOUT curr_AnoIni text, INOUT curr_AnoFim text, INOUT curr_Curso TEXT, INOUT curr_Unidade TEXT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO curriculo(curr_AnoIni, curr_AnoFim, curr_Curso, curr_Unidade) 
	VALUES ($1, $2, $3, $4)
	RETURNING curr_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_modulo(INOUT mod_Codigo int, INOUT mod_Nome text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO modulo(mod_Codigo, mod_Nome) 
	VALUES ($1, $2)
	RETURNING mod_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_trilha(INOUT tr_Codigo int, INOUT tr_Nome text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO trilha(tr_Codigo, tr_Nome)
	VALUES ($1, $2)
	RETURNING tr_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_curr_tri(INOUT ctr_curr_id int, INOUT ctr_tr_id int,  INOUT ctr_AnoInicio text, INOUT ctr_Unidade text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade)
	VALUES ($1, $2, $3, $4)
	RETURNING ctr_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_tr_mod(INOUT mtr_tr_id INT, INOUT mtr_mod_id INT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id)
	VALUES ($1, $2)
	RETURNING mtr_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_dis_mod(INOUT dmod_dis_id INT, INOUT dmod_mod_id INT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id)
	VALUES ($1, $2)
	RETURNING dmod_id into id;
END

$$
LANGUAGE plpgsql;

-- ==============================  FIM DAS FUNÇÕES DE INSERT ================================

-- ==============================  INÎCIO DAS FUNÇÕES DE DELETE ============================== 
CREATE OR REPLACE FUNCTION delete_disciplina(dis_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM disciplina
	WHERE 
		 disciplina.dis_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_prerequisito(prq_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM prerequisito
	WHERE 
		 prerequisito.prq_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_curriculo(curr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM curriculo 
	WHERE 
		 curriculo.curr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_modulo(mod_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM modulo
	WHERE 
		 modulo.mod_id = $1 ;
END
$$  
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION delete_trilha(tr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM trilha 
	WHERE 
		 trilha.tr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_curr_tri(ctr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_curr_tri 
	WHERE 
		 rel_curr_tri.ctr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_tr_mod(mtr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_tr_mod 
	WHERE 
		 rel_tr_mod.mtr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_dis_mod(dmod_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_dis_mod 
	WHERE 
		 rel_dis_mod.dmod_id = $1 ;
END
$$  
LANGUAGE plpgsql;
-- ==============================  FIM DAS FUNÇÕES DE DELETE ====================================

-- ==============================  INÎCIO DAS FUNÇÕES DE UPDATE =================================
CREATE OR REPLACE FUNCTION update_disciplina(dis_id integer, dis_Codigo TEXT, dis_Nome TEXT, dis_Aula integer, dis_Trabalho integer,
											 dis_PeriodoIdeal integer, dis_Ementa TEXT, dis_Descricao TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE disciplina SET dis_Codigo = $2, dis_Nome = $3, dis_Aula = $4, dis_Trabalho = $5, dis_PeriodoIdeal = $6, 
						  dis_Ementa = $7, dis_Descricao = $8 
	WHERE 
		disciplina.dis_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_prerequisito(prq_id integer, prq_dis1_id integer, prq_dis2_id integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE prerequisito SET prq_dis1_id = $2, prq_dis2_id = $3 WHERE prerequisito.prq_id = $1;
END;
$$  LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION update_curriculo(curr_id integer, curr_AnoIni TEXT, curr_AnoFim TEXT, curr_Curso TEXT, curr_Unidade TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE curriculo SET curr_AnoIni = $2, curr_AnoFim = $3, curr_Curso = $4, curr_Unidade = $5 WHERE curriculo.curr_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_modulo(mod_id integer, mod_Codigo integer, mod_Nome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE modulo SET mod_Codigo = $2, mod_Nome = $3 WHERE modulo.mod_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_trilha(tr_id integer, tr_Codigo integer, tr_Nome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE trilha SET tr_Codigo = $2, tr_Nome = $3 WHERE trilha.tr_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_rel_curr_tri(ctr_id integer, ctr_curr_id integer, ctr_tr_id integer, ctr_AnoInicio TEXT, ctr_Unidade TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE rel_curr_tri SET ctr_curr_id = $2, ctr_tr_id = $3, ctr_AnoInicio  = $4, ctr_Unidade = $5 WHERE rel_curr_tri.of_id = $1;
END
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_rel_tr_mod(mtr_id integer, mtr_tr_id integer, mtr_mod_id integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE rel_tr_mod SET mtr_tr_id = $2, mtr_mod_id = $3 WHERE rel_tr_mod.mtr_id = $1;
END
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_rel_dis_mod(dmod_id integer, dmod_dis_id integer, dmod_mod_id integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE rel_dis_mod SET dmod_dis_id = $2, dmod_mod_id = $3 WHERE rel_dis_mod.dmod_id = $1;
END
$$ LANGUAGE plpgsql;
-- ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================

-- ==============================  INÎCIO DAS FUNÇÕES DE RETRIEVAL =================================
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
-- ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================


COMMIT;
