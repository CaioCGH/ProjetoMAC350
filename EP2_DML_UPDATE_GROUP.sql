BEGIN;

CREATE OR REPLACE FUNCTION update_pessoa_email(pe_email email, pe_nusp integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE pessoa SET pe_email = $1 WHERE pessoa.pe_nusp = $2;
END;
$$  LANGUAGE plpgsql;


COMMIT;