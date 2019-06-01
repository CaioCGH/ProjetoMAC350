BEGIN;

CREATE OR REPLACE FUNCTION insert_pessoa(pe_email email, pe_nusp integer, pe_nome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	INSERT INTO pessoa (pe_email, pe_nusp, pe_nome) VALUES ($1, $2, $3);
END;
$$  LANGUAGE plpgsql;

COMMIT;


-- Para inserir, digitar, dentro do BD, "select insert_pessoa('e-mail qualquer, nusp qualquer, 'nome qualquer);"
 