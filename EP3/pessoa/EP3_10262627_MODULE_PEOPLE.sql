
/*
After creating the extensions, lets create a domain for valid emails
Valid emails follows a specific Request for Comment defined in RFC5322
For more info, see: https://tools.ietf.org/html/rfc5322
*/

CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS citext;

DROP DOMAIN IF EXISTS email CASCADE;
CREATE DOMAIN email AS citext
  CHECK ( value ~ '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$' );

-- DROPAR NUMA ORDEM TOPOLOGICA..

DROP TABLE IF EXISTS administrador cascade;
DROP TABLE IF EXISTS professor	   cascade;
DROP TABLE IF EXISTS aluno         cascade;
DROP TABLE IF EXISTS pessoa        cascade;


CREATE TABLE pessoa (
	pe_id 			SERIAL,
	pe_NUSP 		int NOT NULL,
	pe_Nome 		varchar(80) NOT NULL,
	pe_Sobrenome 	varchar(80) NOT NULL,	
	pe_Email 		email NOT NULL,
	CONSTRAINT pk_pessoa PRIMARY KEY (pe_id),
	CONSTRAINT sk_pessoa UNIQUE (pe_email),
	CONSTRAINT tk_pessoa UNIQUE (pe_NUSP)
);

CREATE TABLE aluno (
	al_id			SERIAL,
	al_DataIngresso varchar(10) NOT NULL,
	al_CodCurso 	int,
	al_Livres 		int,
	al_Eletivas 	int,
	al_Obrigatorias int,
	CONSTRAINT al_id PRIMARY KEY (al_id),
    FOREIGN KEY(al_id) REFERENCES pessoa(pe_id)
);


CREATE TABLE professor (
	pr_id 			SERIAL,
	pr_Area  		varchar(80) NOT NULL,
	pr_Departamento varchar(80) NOT NULL,
	pr_DataAdmissao varchar(10) NOT NULL,
	CONSTRAINT pr_id PRIMARY KEY (pr_id),
    FOREIGN KEY(pr_id) REFERENCES pessoa(pe_id)
);


CREATE TABLE administrador (
	adm_id				SERIAL,
	CONSTRAINT adm_id PRIMARY KEY (adm_id),
    FOREIGN KEY(adm_id) REFERENCES pessoa(pe_id)
);

BEGIN;
-- ==============================  INÎCIO DAS FUNÇÕES DE INSERT ============================== 

CREATE OR REPLACE FUNCTION insert_pessoa(INOUT pe_email text, INOUT pe_nusp integer, INOUT pe_nome text,  INOUT pe_sobrenome text,OUT id int)
AS 
$$
BEGIN
	INSERT INTO pessoa (pe_email, pe_nusp, pe_nome, pe_sobrenome) 
	VALUES ($1, $2, $3)
	RETURNING pe_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_aluno(INOUT al_id int, INOUT al_DataIngresso text, INOUT al_CodCurso int, INOUT al_Livres int, 
	                                    INOUT al_Eletivas int, INOUT al_Obrigatorias int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias) 
	VALUES ($1, $2, $3, $4, $5, $6)
	RETURNING al_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_professor(INOUT pr_id int, INOUT pr_Area text, INOUT pr_Departamento text, INOUT pr_DataAdmissao text)
AS 
$$
BEGIN
	INSERT INTO professor (pr_id , pr_Area, pr_Departamento, pr_DataAdmissao) 
	VALUES ($1, $2, $3, $4)
	RETURNING pr_id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_administrador(INOUT adm_id int)
AS 
$$
BEGIN
	INSERT INTO administrador (adm_id) 
	VALUES ($1)
	RETURNING adm_id;
END
$$
LANGUAGE plpgsql;

-- ==============================  FIM DAS FUNÇÕES DE INSERT ================================

-- ==============================  INÎCIO DAS FUNÇÕES DE DELETE ============================== 
CREATE OR REPLACE FUNCTION delete_pessoa(pe_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM pessoa WHERE pessoa.pe_id = $1;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_aluno(al_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM aluno 
	WHERE 
		 aluno.al_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_professor(pr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM professor 
	WHERE 
		 professor.pr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_administrador(adm_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM administrador 
	WHERE 
		 administrador.ad_id = $1 ;
END
$$  
LANGUAGE plpgsql;
-- ==============================  FIM DAS FUNÇÕES DE DELETE ====================================

-- ==============================  INÎCIO DAS FUNÇÕES DE UPDATE =================================
CREATE OR REPLACE FUNCTION update_pessoa(pe_id integer, pe_nusp integer, pe_email email, pe_nome TEXT, pe_sobrenome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE pessoa SET pe_nusp = $2, pe_email = $3, pe_nome = $4, pe_sobrenome = $5 WHERE pessoa.pe_id = $1;
END;
$$  LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION update_aluno(al_id integer, al_DataIngresso TEXT, al_CodCurso TEXT, al_Livres integer, al_Eletivas integer, al_Obrigatorias integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE aluno SET al_DataIngresso = $2, al_CodCurso = $3, al_Livres = $4, al_Eletivas = $5, al_Obrigatorias = $6 WHERE aluno.al_id = $1;
END;
$$  LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION update_professor(pr_id integer, pr_Area TEXT, pr_Departamento TEXT, pr_DataAdmissao TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE professor SET pr_Area = $2, pr_Departamento = $3, pr_DataAdmissao = $4 WHERE professor.pr_id = $1;
END;
$$  LANGUAGE plpgsql;

--CREATE OR REPLACE FUNCTION update_administrador(pr_id integer, pr_Area TEXT, pr_Departamento TEXT, pr_DataAdmissao TEXT)
--RETURNS VOID AS $$
--DECLARE
--BEGIN
--	UPDATE professor SET pr_Area = $2, pr_Departamento = $3, pr_DataAdmissao = $4 WHERE professor.pr_id = $1;
--END;
--$$  LANGUAGE plpgsql;

-- ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================

-- ==============================  INÎCIO DAS FUNÇÕES DE RETRIEVAL =================================
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
-- ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================


COMMIT;
