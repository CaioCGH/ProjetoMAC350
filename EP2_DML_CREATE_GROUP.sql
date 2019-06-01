BEGIN;

CREATE OR REPLACE FUNCTION insert_pessoa(pe_email email, pe_nusp TEXT, pe_nome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	INSERT INTO pessoa (pe_email, pe_nusp, pe_nome) VALUES ($1, $2, $3);
	RETURN valid_creation;
END;
$$  LANGUAGE plpgsql


COMMIT;