
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
DROP TABLE IF EXISTS rel_pe_us;

CREATE TABLE rel_pe_us(
	pus_id		SERIAL,
	pus_pe_id	SERIAL,
	pus_us_id 	SERIAL,
	CONSTRAINT pk_rel_pe_us PRIMARY KEY(pus_id),
    FOREIGN KEY(pus_pe_id) REFERENCES pessoa(pe_id),
    FOREIGN KEY(pus_us_id) REFERENCES users(us_id)
);



BEGIN;
# ==============================  INÎCIO DAS FUNÇÕES DE INSERT ============================== 

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

# ==============================  FIM DAS FUNÇÕES DE INSERT ================================

# ==============================  INÎCIO DAS FUNÇÕES DE DELETE ============================== 
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
# ==============================  FIM DAS FUNÇÕES DE DELETE ====================================

# ==============================  INÎCIO DAS FUNÇÕES DE UPDATE =================================
#			 NÃO TEM NADA NO DML DE UPDATE SOBRE O MÓDULO DE INTEGRAÇÃO ACCESS-PEOPLE
#
#								Faz sentido não ter. O que acham?
#
# ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================

# ==============================  INÎCIO DAS FUNÇÕES DE RETRIEVAL =================================
#			 NÃO TEM NADA NO DML DE RETRIEVAL SOBRE O MÓDULO DE INTEGRAÇÃO ACCESS-PEOPLE
# ==============================  FIM DAS FUNÇÕES DE UPDATE =======================================


COMMIT;
