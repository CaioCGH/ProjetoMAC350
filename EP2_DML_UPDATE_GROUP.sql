BEGIN;

CREATE OR REPLACE FUNCTION update_pessoa(pe_id integer, pe_nusp integer, pe_email email, pe_nome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE pessoa SET pe_nusp = pe_nusp, pe_email = pe_email, pe_nome = pe_nome WHERE pessoa.pe_id = pe_id;
END;
$$  LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION update_aluno(al_id integer, al_DataIngresso TEXT, al_CodCurso TEXT, al_Livres integer, al_Eletivas integer, al_Obrigatorias integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE aluno SET al_DataIngresso = $2, al_CodCurso = $3, al_Livres = $4, al_Eletivas = $5, al_Obrigatorias = $6 WHERE aluno.al_id = $1;
END;
$$  LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION update_professor(pr_id integer, pr_Area TEXT, pr_Departamento TEXT, pr_DataAdmissao TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE aluno SET pr_Area = $2, pr_Departamento = $3, pr_DataAdmissao = $4 WHERE professor.pr_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_disciplina(dis_id integer, dis_Codigo integer, dis_Nome TEXT, dis_Aula integer, dis_Trabalho integer, dis_PeriodoIdeal TEXT, dis_Ementa TEXT, dis_Descricao TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE disciplina SET dis_Codigo = $2, dis_Nome = $3, dis_Aula = $4, dis_Trabalho = $5, dis_PeriodoIdeal = $6, dis_Ementa = $7, dis_Descricao = $8 WHERE disciplina.dis_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_prerequisito(prq_id integer, prq_dis1_id integer, prq_dis2_id integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE prerequisito SET prq_dis1_id = $2, prq_dis2_id = $3 WHERE prerequisito.prq_id = $1;
END;
$$  LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION update_curriculo(curr_id integer, curr_AnoIni TEXT, curr_AnoFim TEXT, curr_Curso TEXT, curr_Unidade TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE curriculo SET curr_AnoIni = $2, curr_AnoFim = $3, curr_Curso = $4, curr_Unidade = $5 WHERE curriculo.curr_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_modulo(mod_id integer, mod_Codigo integer, mod_Nome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE modulo SET mod_Codigo = $2, mod_Nome = $3 WHERE modulo.mod_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_trilha(tr_id integer, tr_Codigo integer, tr_Nome TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE trilha SET tr_Codigo = $2, tr_Nome = $3 WHERE trilha.tr_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_perfil(pf_id integer, pf_Tipo integer)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE perfil SET pf_Tipo = $2 WHERE perfil.pf_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_servico(sr_id integer, sr_Nome TEXT, sr_Descricao TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE servico SET sr_Nome = $2, sr_Descricao = $3 WHERE servico.sr_id = $1;
END;
$$  LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_users(us_id integer, us_email TEXT, us_password TEXT)
RETURNS VOID AS $$
DECLARE
BEGIN
	UPDATE users SET us_email = $2, us_password = $3 WHERE users.us_id = $1;
END;
$$  LANGUAGE plpgsql;


COMMIT;