BEGIN;

CREATE OR REPLACE FUNCTION delete_pessoa(pe_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM pessoa WHERE pessoa.pe_id = $1;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_aluno(al_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM aluno 
	WHERE 
		 aluno.al_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_professor(pr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM professor 
	WHERE 
		 professor.pr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_administrador(adm_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM administrador 
	WHERE 
		 administrador.ad_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_disciplina(dis_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM disciplina
	WHERE 
		 disciplina.dis_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_prerequisito(prq_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM prerequisito
	WHERE 
		 prerequisito.prq_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_curriculo(curr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM curriculo 
	WHERE 
		 curriculo.curr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_modulo(mod_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM modulo
	WHERE 
		 modulo.mod_id = $1 ;
END
$$  
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION delete_trilha(tr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM trilha 
	WHERE 
		 trilha.tr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_perfil(pf_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM perfil 
	WHERE 
		 perfil.pf_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_servico(sr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM servico 
	WHERE 
		 servico.sr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_users(us_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM users 
	WHERE 
		 users.us_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_oferecimento(of_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM oferecimento 
	WHERE 
		 oferecimento.of_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_pe_us(pus_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_pe_us 
	WHERE 
		 rel_pe_us.pus_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_cursa(cur_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM cursa
	WHERE 
		 cursa.cur_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_planeja(pla_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM planeja 
	WHERE 
		 planeja.pla_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_curr_tri(ctr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_curr_tri 
	WHERE 
		 rel_curr_tri.ctr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_adm_curr(acurr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_adm_curr 
	WHERE 
		 rel_adm_curr.acurr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_tr_mod(mtr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_tr_mod 
	WHERE 
		 rel_tr_mod.mtr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_dis_mod(dmod_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_dis_mod 
	WHERE 
		 rel_dis_mod.dmod_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_us_pf(upf_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_us_pf 
	WHERE 
		 rel_us_pf.upf_id = $1 ;
END
$$  
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_rel_pf_sr(psr_id integer)
RETURNS VOID AS 
$$
BEGIN
	DELETE FROM rel_pf_sr
	WHERE 
		 rel_pf_sr.psr_id = $1 ;
END
$$  
LANGUAGE plpgsql;

COMMIT;