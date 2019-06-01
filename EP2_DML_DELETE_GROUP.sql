BEGIN;

CREATE OR REPLACE FUNCTION delete_pessoa_nusp(pe_nusp integer)
RETURNS VOID AS 
$$
	DELETE FROM pessoa WHERE pessoa.pe_NUSP = $1
$$  
LANGUAGE sql;

CREATE OR REPLACE FUNCTION delete_professor_nusp(pr_nusp integer)
RETURNS VOID AS 
$$
	DELETE FROM professor 
	WHERE 
		 professor.pr_id = (SELECT pe_id from pessoa where pr_nusp = pe_nusp) 
$$  
LANGUAGE sql;


COMMIT;