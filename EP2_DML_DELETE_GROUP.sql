BEGIN;

CREATE OR REPLACE FUNCTION delete_pessoa_nusp(pe_nusp integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	DELETE FROM pessoa WHERE pessoa.pe_NUSP = $1;
END;
$$  LANGUAGE plpgsql;


COMMIT;