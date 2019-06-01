BEGIN;

CREATE OR REPLACE FUNCTION update_pessoa_email(INOUT pe_email text, INOUT pe_nusp integer, OUT id int)
AS 
$$
	UPDATE pessoa SET pe_email = $1 WHERE pessoa.pe_nusp = $2
	RETURNING pe_email, pe_nusp, pe_id
$$  
LANGUAGE sql;


COMMIT;