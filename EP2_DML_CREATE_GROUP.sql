BEGIN;



CREATE OR REPLACE FUNCTION insert_pessoa(INOUT pe_email text, INOUT pe_nusp integer, INOUT pe_nome text, OUT id int)
AS 
$$
	INSERT INTO pessoa (pe_email, pe_nusp, pe_nome) 
	VALUES ($1, $2, $3)
	RETURNING pe_email, pe_nusp, pe_nome, pe_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_aluno(INOUT al_id int, INOUT al_DataIngresso text, INOUT al_CodCurso int, INOUT al_Livres int, 
	                                    INOUT al_Eletivas int, INOUT al_Obrigatorias int, OUT id int)
AS 
$$
	INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias) 
	VALUES ($1, $2, $3, $4, $5, $6)
	RETURNING al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias, al_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_professor(INOUT pr_id int, INOUT pr_Area text, INOUT pr_Departamento text, INOUT pr_DataAdmissao text)
AS 
$$
	INSERT INTO professor (pr_id , pr_Area, pr_Departamento, pr_DataAdmissao) 
	VALUES ($1, $2, $3, $4)
	RETURNING pr_id , pr_Area, pr_Departamento, pr_DataAdmissao
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_administrador(INOUT adm_id int)
AS 
$$
	INSERT INTO administrador (adm_id) 
	VALUES ($1)
	RETURNING adm_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_disciplina(INOUT dis_Codigo text, INOUT dis_Nome TEXT, INOUT dis_Aula int, INOUT dis_Trabalho int, 
	                                         INOUT dis_PeriodoIdeal int, INOUT dis_Ementa text, INOUT dis_Descricao text, OUT id int)
AS 
$$
	INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao) 
	VALUES ($1, $2, $3, $4, $5, $6, $7)
	RETURNING dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao, dis_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_prerequisito(INOUT prq_dis1_id int, INOUT prq_dis2_id int, OUT id int)
AS 
$$
	INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) 
	VALUES ($1, $2)
	RETURNING prq_dis1_id, prq_dis2_id, prq_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_curriculo(INOUT curr_AnoIni text, INOUT curr_AnoFim text, INOUT curr_Curso TEXT, INOUT curr_Unidade TEXT, OUT id int)
AS 
$$
	INSERT INTO curriculo(curr_AnoIni, curr_AnoFim, curr_Curso, curr_Unidade) 
	VALUES ($1, $2, $3, $4)
	RETURNING curr_AnoIni, curr_AnoFim, curr_Curso, curr_Unidade, curr_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_modulo(INOUT mod_Codigo int, INOUT mod_Nome text, OUT id int)
AS 
$$
	INSERT INTO modulo(mod_Codigo, mod_Nome) 
	VALUES ($1, $2)
	RETURNING mod_Codigo, mod_Nome, mod_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_trilha(INOUT tr_Codigo int, INOUT tr_Nome text, OUT id int)
AS 
$$
	INSERT INTO trilha(tr_Codigo, tr_Nome)
	VALUES ($1, $2)
	RETURNING tr_Codigo, tr_Nome, tr_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_perfil(INOUT pf_Tipo TEXT, OUT id int)
AS 
$$
	INSERT INTO perfil (pf_Tipo)
	VALUES ($1)
	RETURNING pf_Tipo, pf_id
$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_servico(INOUT sr_Nome text, INOUT sr_Descricao text, OUT id int)
AS 
$$
	INSERT INTO servico (sr_Nome, sr_Descricao) 
	VALUES ($1, $2)
	RETURNING sr_Nome, sr_Descricao, sr_id

$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_oferecimento(INOUT of_pr_id int, INOUT of_dis_id int, INOUT of_DataInicio text, INOUT of_Vagas int, 
											   INOUT of_Horario text, OUT id int)
AS 
$$
	INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario)
	VALUES ($1, $2, $3, $4, $5)
	RETURNING of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario, of_id

$$
LANGUAGE sql;

CREATE OR REPLACE FUNCTION insert_users(INOUT us_email text, INOUT us_password text, OUT id int)
AS 
$$
	INSERT INTO users(us_email, us_password)
	VALUES ($1, $2)
	RETURNING us_email, us_password, us_id

$$
LANGUAGE sql;

COMMIT;


-- Para inserir, digitar, dentro do BD, "select insert_pessoa('e-mail qualquer, nusp qualquer, 'nome qualquer);"
 