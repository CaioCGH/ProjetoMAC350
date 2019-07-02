BEGIN;



CREATE OR REPLACE FUNCTION insert_pessoa(INOUT pe_email text, INOUT pe_nusp integer, INOUT pe_nome text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO pessoa (pe_email, pe_nusp, pe_nome) 
	VALUES ($1, $2, $3)
	RETURNING pe_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_aluno(INOUT al_id int, INOUT al_DataIngresso text, INOUT al_CodCurso int, INOUT al_Livres int, 
	                                    INOUT al_Eletivas int, INOUT al_Obrigatorias int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias) 
	VALUES ($1, $2, $3, $4, $5, $6)
	RETURNING al_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_professor(INOUT pr_id int, INOUT pr_Area text, INOUT pr_Departamento text, INOUT pr_DataAdmissao text)
AS 
$$
BEGIN
	INSERT INTO professor (pr_id , pr_Area, pr_Departamento, pr_DataAdmissao) 
	VALUES ($1, $2, $3, $4)
	RETURNING pr_id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_administrador(INOUT adm_id int)
AS 
$$
BEGIN
	INSERT INTO administrador (adm_id) 
	VALUES ($1)
	RETURNING adm_id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_disciplina(INOUT dis_Codigo text, INOUT dis_Nome TEXT, INOUT dis_Aula int, INOUT dis_Trabalho int, 
	                                         INOUT dis_PeriodoIdeal int, INOUT dis_Ementa text, INOUT dis_Descricao text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao) 
	VALUES ($1, $2, $3, $4, $5, $6, $7)
	RETURNING dis_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_prerequisito(INOUT prq_dis1_id int, INOUT prq_dis2_id int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) 
	VALUES ($1, $2)
	RETURNING prq_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_curriculo(INOUT curr_AnoIni text, INOUT curr_AnoFim text, INOUT curr_Curso TEXT, INOUT curr_Unidade TEXT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO curriculo(curr_AnoIni, curr_AnoFim, curr_Curso, curr_Unidade) 
	VALUES ($1, $2, $3, $4)
	RETURNING curr_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_modulo(INOUT mod_Codigo int, INOUT mod_Nome text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO modulo(mod_Codigo, mod_Nome) 
	VALUES ($1, $2)
	RETURNING mod_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_trilha(INOUT tr_Codigo int, INOUT tr_Nome text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO trilha(tr_Codigo, tr_Nome)
	VALUES ($1, $2)
	RETURNING tr_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_perfil(INOUT pf_Tipo TEXT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO perfil (pf_Tipo)
	VALUES ($1)
	RETURNING pf_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_servico(INOUT sr_Nome text, INOUT sr_Descricao text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO servico (sr_Nome, sr_Descricao) 
	VALUES ($1, $2)
	RETURNING sr_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_oferecimento(INOUT of_pr_id int, INOUT of_dis_id int, INOUT of_DataInicio text, INOUT of_Vagas int, 
											   INOUT of_Horario text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario)
	VALUES ($1, $2, $3, $4, $5)
	RETURNING of_id into id;
END
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_users(INOUT us_email text, INOUT us_password text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO users(us_email, us_password)
	VALUES ($1, $2)
	RETURNING us_id into id;
END
$$
LANGUAGE plpgsql;

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

CREATE OR REPLACE FUNCTION insert_cursa(INOUT cur_al_id int, INOUT cur_of_id int, INOUT cur_Nota float, INOUT cur_Freq int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq)
	VALUES ($1, $2, $3, $4)
	RETURNING cur_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_planeja(INOUT pla_al_id int, INOUT pla_dis_id int, INOUT pla_DataInicio text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio)
	VALUES ($1, $2, $3)
	RETURNING pla_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_curr_tri(INOUT ctr_curr_id int, INOUT ctr_tr_id int,  INOUT ctr_AnoInicio text, INOUT ctr_Unidade text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade)
	VALUES ($1, $2, $3, $4)
	RETURNING ctr_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_adm_curr(INOUT acurr_adm_id int, INOUT acurr_curr_id int, INOUT acurr_DataInicio TEXT, 
											   INOUT acurr_DataTermino TEXT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino)
	VALUES ($1, $2, $3, $4)
	RETURNING acurr_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_tr_mod(INOUT mtr_tr_id INT, INOUT mtr_mod_id INT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id)
	VALUES ($1, $2)
	RETURNING mtr_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_dis_mod(INOUT dmod_dis_id INT, INOUT dmod_mod_id INT, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id)
	VALUES ($1, $2)
	RETURNING dmod_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_us_pf(INOUT upf_us_id INT, INOUT upf_pf_id INT, INOUT upf_DataInicio text, 
											INOUT upf_DataTermino text, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino)
	VALUES ($1, $2, $3, $4)
	RETURNING upf_id into id;
END

$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_rel_pf_sr(INOUT psr_pf_id int, INOUT psr_sr_id int, OUT id int)
AS 
$$
BEGIN
	INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id)
	VALUES ($1, $2)
	RETURNING psr_id into id;
END

$$
LANGUAGE plpgsql;

COMMIT;


-- Para inserir, digitar, dentro do BD, "select * from insert_pessoa('e-mail qualquer, nusp qualquer, 'nome qualquer);"
 