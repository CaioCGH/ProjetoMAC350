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
DROP TABLE IF EXISTS rel_pf_sr;
DROP TABLE IF EXISTS rel_us_pf;
DROP TABLE IF EXISTS servico;
DROP TABLE IF EXISTS perfil;
DROP TABLE IF EXISTS users CASCADE;


CREATE TABLE perfil(
	pf_id SERIAL,
	pf_Tipo varchar(80) NOT NULL,
	CONSTRAINT pk_perfil PRIMARY KEY (pf_id),
	CONSTRAINT sk_perfil UNIQUE (pf_Tipo)
);

CREATE TABLE servico(
	sr_id 			SERIAL,
	sr_Nome 		varchar(80) NOT NULL,
	sr_Descricao 	varchar(80) NOT NULL,
	CONSTRAINT pk_servico PRIMARY KEY (sr_id),
	CONSTRAINT sk_servico UNIQUE (sr_Nome)
);

CREATE TABLE users (
	us_id       SERIAL,
	us_email    email NOT NULL,
	us_password TEXT NOT NULL,
	CONSTRAINT pk_user PRIMARY KEY (us_id),
	CONSTRAINT sk_user UNIQUE (us_email)
);


CREATE TABLE rel_us_pf(
	upf_id			SERIAL,
	upf_us_id       SERIAL,
	upf_pf_id       SERIAL,
	upf_DataInicio  varchar(10) NOT NULL,
	upf_DataTermino varchar(10),
	CONSTRAINT pk_us_pf PRIMARY KEY(upf_id),
    FOREIGN KEY(upf_pf_id) REFERENCES perfil(pf_id),
    FOREIGN KEY(upf_us_id) REFERENCES users(us_id)
);

CREATE TABLE rel_pf_sr(
	psr_id		SERIAL,
	psr_pf_id	SERIAL,
	psr_sr_id	SERIAL,
	CONSTRAINT pk_pf_sr PRIMARY KEY(psr_id),
    FOREIGN KEY(psr_pf_id) REFERENCES perfil(pf_id),
    FOREIGN KEY(psr_sr_id) REFERENCES servico(sr_id)
);

-- # ==============================  INÎCIO DAS FUNÇÕES DE INSERT ============================== 
BEGIN;

CREATE OR REPLACE FUNCTION insert_perfil(INOUT pf_Tipo TEXT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO perfil (pf_Tipo)
	VALUES ($1)
	RETURNING pf_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_servico(INOUT sr_Nome text, INOUT sr_Descricao text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO servico (sr_Nome, sr_Descricao) 
	VALUES ($1, $2)
	RETURNING sr_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_users(INOUT us_email text, INOUT us_password text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO users(us_email, us_password)
	VALUES ($1, $2)
	RETURNING us_id into id;
END
$$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION insert_rel_us_pf(INOUT upf_us_id INT, INOUT upf_pf_id INT, INOUT upf_DataInicio text, 
											INOUT upf_DataTermino text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino)
	VALUES ($1, $2, $3, $4)
	RETURNING upf_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_pf_sr(INOUT psr_pf_id int, INOUT psr_sr_id int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id)
	VALUES ($1, $2)
	RETURNING psr_id into id;
END

$$
LANGUAGE plpgsql;

-- # ==============================  FIM DAS FUNÇÕES DE INSERT ================================

-- # ==============================  INÎCIO DAS FUNÇÕES DE DELETE ============================== 
CREATE OR REPLACE FUNCTION delete_perfil(pf_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM perfil 
	WHERE 
		 perfil.pf_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_servico(sr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM servico 
	WHERE 
		 servico.sr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_users(us_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM users 
	WHERE 
		 users.us_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_us_pf(upf_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_us_pf 
	WHERE 
		 rel_us_pf.upf_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_pf_sr(psr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_pf_sr
	WHERE 
		 rel_pf_sr.psr_id = $1 ;
END
$$  
LANGUAGE plpgsql;
-- # ==============================  FIM DAS FUNÇÕES DE DELETE =================================
-- # ==============================  INÎCIO DAS FUNÇÕES DE UPDATE =================================
CREATE OR REPLACE FUNCTION update_perfil(pf_id integer, pf_Tipo integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE perfil SET pf_Tipo = $2 WHERE perfil.pf_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_servico(sr_id integer, sr_Nome TEXT, sr_Descricao TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE servico SET sr_Nome = $2, sr_Descricao = $3 WHERE servico.sr_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_users(us_id integer, us_email TEXT, us_password TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE users SET us_email = $2, us_password = $3 WHERE users.us_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_rel_us_pf(pf_id integer, pf_Tipo integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE rel_us_pf SET pf_Tipo = $2 WHERE perfil.pf_id = $1;
END;
$$  LANGUAGE plpgsql;

-- # ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================

-- # ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================

-- # ==============================  INÎCIO DAS FUNÇÕES DE RETRIEVAL =================================
DROP FUNCTION IF EXISTS  get_user_by_email(VARCHAR);
CREATE OR REPLACE FUNCTION get_user_by_email (query_email VARCHAR) 
   RETURNS TABLE (
		 	user_id int,
      user_email VARCHAR,
      user_password VARCHAR
) 
AS $$
BEGIN
   RETURN QUERY SELECT
	 		cast(us_id as int),
      cast(us_email as varchar),
      cast(us_password as varchar)
   FROM
      users
   WHERE
      us_email ILIKE query_email ;
END; $$ 
 
LANGUAGE 'plpgsql';

COMMIT;
