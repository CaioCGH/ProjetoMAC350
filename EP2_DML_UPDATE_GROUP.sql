BEGIN;

CREATE OR REPLACE FUNCTION update_pessoa_email(pe_email email, pe_nusp TEXT, pe_nome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE pessoas SET pe_email = $1 WHERE pe_nusp = $2 and pe_nome = $3;
END;
$$  LANGUAGE plpgsql


COMMIT;