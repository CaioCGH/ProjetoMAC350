/*
After creating the extensions, lets create a domain for valid emails
Valid emails follows a specific Request for Comment defined in RFC5322
For more info, see: https://tools.ietf.org/html/rfc5322
*/
CREATE EXTENSION IF NOT EXISTS dblink;
CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS citext;

DROP DOMAIN IF EXISTS email CASCADE;
CREATE DOMAIN email AS citext
  CHECK ( value ~ '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$' );


-- DROPAR NUMA ORDEM TOPOLOGICA..
DROP TABLE IF EXISTS rel_pe_us cascade;

CREATE TABLE rel_pe_us(
	pus_id		SERIAL,
	pus_pe_id	SERIAL,
	pus_us_id 	SERIAL,
	CONSTRAINT pk_rel_pe_us PRIMARY KEY(pus_id)
);

/*
OLD
CREATE TABLE rel_pe_us(
	pus_id		SERIAL,
	pus_pe_id	SERIAL,
	pus_us_id 	SERIAL,
	CONSTRAINT pk_rel_pe_us PRIMARY KEY(pus_id),
    FOREIGN KEY(pus_pe_id) REFERENCES pessoa(pe_id),
    FOREIGN KEY(pus_us_id) REFERENCES users(us_id)
);

*/

BEGIN;
-- ==============================  INÎCIO DAS FUNÇÕES DE INSERT ============================== 

CREATE OR REPLACE FUNCTION insert_rel_pe_us (INOUT pus_pe_id int, INOUT pus_us_id int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_pe_us (pus_pe_id, pus_us_id)
	VALUES ($1, $2)
	RETURNING pus_id into id;
END

$$
LANGUAGE plpgsql;

-- ==============================  FIM DAS FUNÇÕES DE INSERT ================================

-- ==============================  INÎCIO DAS FUNÇÕES DE DELETE ============================== 
CREATE OR REPLACE FUNCTION delete_rel_pe_us(pus_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_pe_us 
	WHERE 
		 rel_pe_us.pus_id = $1 ;
END
$$  
LANGUAGE plpgsql;
-- ==============================  FIM DAS FUNÇÕES DE DELETE ====================================

-- ==============================  INÎCIO DAS FUNÇÕES DE UPDATE =================================
--			 NÃO TEM NADA NO DML DE UPDATE SOBRE O MÓDULO DE INTEGRAÇÃO ACCESS-PEOPLE
--
--								Faz sentido não ter. O que acham?
--
-- ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================

-- ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================
-- ==============================  INÎCIO DAS FUNÇÕES DE RETRIEVAL =================================
DROP FUNCTION IF EXISTS  get_pessoa_by_user_id(query_id int);
CREATE OR REPLACE FUNCTION get_pessoa_by_user_id(query_id int) 
   RETURNS TABLE (
		id 		int,
		NUSP 	int,
		Nome 	varchar
)
AS $$
BEGIN
	RETURN QUERY SELECT
		pe_id,
		pe_NUSP,
		cast(pe_Nome as varchar)
	FROM dblink('dbname=pessoa user=caio password=0' ,'SELECT * FROM pessoa') AS (pe_id int, pe_NUSP int, pe_Nome varchar(80),  pe_Sobrenome varchar(80), pe_Email email) WHERE pe_id = (SELECT pus_pe_id FROM rel_pe_us WHERE pus_us_id = query_id );
END; $$ 
 
LANGUAGE 'plpgsql';


COMMIT;
