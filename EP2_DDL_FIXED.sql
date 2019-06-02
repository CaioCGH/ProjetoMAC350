DROP DOMAIN IF EXISTS email CASCADE;
CREATE DOMAIN email AS citext
  CHECK ( value ~ '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$' );

-- DROPAR NUMA ORDEM TOPOLOGICA..
DROP TABLE IF EXISTS rel_adm_curr;
DROP TABLE IF EXISTS rel_pe_us;
DROP TABLE IF EXISTS rel_pf_sr;
DROP TABLE IF EXISTS rel_us_pf;
DROP TABLE IF EXISTS rel_dis_mod;
DROP TABLE IF EXISTS rel_tr_mod;
DROP TABLE IF EXISTS rel_curr_tri;
DROP TABLE IF EXISTS planeja;
DROP TABLE IF EXISTS cursa;
DROP TABLE IF EXISTS oferecimento;
DROP TABLE IF EXISTS servico;
DROP TABLE IF EXISTS perfil;
DROP TABLE IF EXISTS trilha;
DROP TABLE IF EXISTS modulo;
DROP TABLE IF EXISTS curriculo;
DROP TABLE IF EXISTS prerequisito;
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS administrador;
DROP TABLE IF EXISTS professor;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS pessoa;

CREATE TABLE pessoa (
	pe_id 		SERIAL,
	pe_NUSP 	int,
	pe_Nome 	varchar(80),
	pe_Email 	email,
	CONSTRAINT pk_pessoa PRIMARY KEY (pe_id),
	CONSTRAINT sk_pessoa UNIQUE (pe_email),
	CONSTRAINT tk_pessoa UNIQUE (pe_NUSP)
);

CREATE TABLE aluno (
	al_id			SERIAL,
	al_DataIngresso varchar(10),
	al_CodCurso 	int,
	al_Livres 		int,
	al_Eletivas 	int,
	al_Obrigatorias int,
	CONSTRAINT al_id PRIMARY KEY (al_id),
    FOREIGN KEY(al_id) REFERENCES pessoa(pe_id)
);


CREATE TABLE professor (
	pr_id 			SERIAL,
	pr_Area  		varchar(80),
	pr_Departamento varchar(80),
	pr_DataAdmissao varchar(10),
	CONSTRAINT pr_id PRIMARY KEY (pr_id),
    FOREIGN KEY(pr_id) REFERENCES pessoa(pe_id)
);

-- area de atuaçao removido para simplificar o projeto

CREATE TABLE administrador (
	adm_id				SERIAL,
	CONSTRAINT adm_id PRIMARY KEY (adm_id),
    FOREIGN KEY(adm_id) REFERENCES pessoa(pe_id)
);

CREATE TABLE disciplina (
	dis_id 				SERIAL,
	dis_Codigo  		varchar(80),
	dis_Nome    		varchar(80),
	dis_Aula    		int,
	dis_Trabalho 		int,
	dis_PeriodoIdeal 	int,
	dis_Ementa 			varchar(2000),
	dis_Descricao 		varchar(1000),
	CONSTRAINT pk_disciplina PRIMARY KEY (dis_id),
	CONSTRAINT sk_disciplina UNIQUE (dis_codigo)
);

CREATE TABLE prerequisito (
	prq_id					SERIAL,
	prq_dis1_id				SERIAL,
	prq_dis2_id				SERIAL,
	CONSTRAINT prq_id PRIMARY KEY (prq_id),
    FOREIGN KEY(prq_dis1_id) REFERENCES disciplina(dis_id),
    FOREIGN KEY(prq_dis2_id) REFERENCES disciplina(dis_id)
);

CREATE TABLE curriculo (
	curr_id			SERIAL,
	curr_AnoIni 	varchar(10),
	curr_AnoFim 	varchar(10),
	curr_Curso 		varchar(80),
	curr_Unidade 	varchar(80),
	CONSTRAINT pk_curriculo PRIMARY KEY(curr_id),
	CONSTRAINT sk_curriculo UNIQUE (curr_Curso, curr_Unidade, curr_AnoIni) 
);

CREATE TABLE modulo (
	mod_id 		SERIAL,
	mod_Codigo  int,
	mod_Nome    varchar(80),
	CONSTRAINT pk_modulo PRIMARY KEY(mod_id),
	CONSTRAINT sk_modulo UNIQUE (mod_Codigo)
);

CREATE TABLE trilha (
	tr_id		SERIAL,
	tr_Codigo   int,
	tr_Nome 	varchar(80),
	CONSTRAINT pk_trilha PRIMARY KEY(tr_id),
	CONSTRAINT sk_trilha UNIQUE (tr_Codigo)
);

-- usuario substituido pelo users em SUPPORT.sql

CREATE TABLE perfil(
	pf_id SERIAL,
	pf_Tipo varchar(80),
	CONSTRAINT pk_perfil PRIMARY KEY (pf_id),
	CONSTRAINT sk_perfil UNIQUE (pf_Tipo)
);

CREATE TABLE servico(
	sr_id 			SERIAL,
	sr_Nome 		varchar(80),
	sr_Descricao 	varchar(80),
	CONSTRAINT pk_servico PRIMARY KEY (sr_id),
	CONSTRAINT sk_servico UNIQUE (sr_Nome)
);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	us_id       SERIAL,
	us_email    email,
	us_password TEXT NOT NULL,
	CONSTRAINT pk_user PRIMARY KEY (us_id),
	CONSTRAINT sk_user UNIQUE (us_email)
);

CREATE TABLE oferecimento(
	of_id 			SERIAL,
	of_pr_id 		SERIAL,
	of_dis_id		SERIAL,
	of_DataInicio 	varchar(10),
	of_Vagas 		int,
	of_Horario 		varchar(80),
	CONSTRAINT pk_oferecimento PRIMARY KEY (of_id),
	CONSTRAINT sk_oferecimento UNIQUE (of_DataInicio, of_pr_id, of_dis_id, of_Horario),
	FOREIGN KEY(of_pr_id) REFERENCES professor(pr_id),
	FOREIGN KEY(of_dis_id) REFERENCES disciplina(dis_id)
);

CREATE TABLE rel_pe_us(
	pus_id		SERIAL,
	pus_pe_id	SERIAL,
	pus_us_id 	SERIAL,
	CONSTRAINT pk_rel_pe_us PRIMARY KEY(pus_id),
    FOREIGN KEY(pus_pe_id) REFERENCES pessoa(pe_id),
    FOREIGN KEY(pus_us_id) REFERENCES users(us_id)
);

CREATE TABLE cursa(
	cur_id 			SERIAL,
	cur_al_id		SERIAL,
	cur_of_id 		SERIAL,
	cur_Nota 		float,
	cur_Freq 		int,
	CONSTRAINT pk_cursa PRIMARY KEY(cur_id),
	CONSTRAINT sk_cursa UNIQUE (cur_al_id, cur_of_id),
	FOREIGN KEY(cur_al_id) REFERENCES aluno(al_id),
    FOREIGN KEY(cur_of_id) REFERENCES oferecimento(of_id)
);

CREATE TABLE planeja(
	pla_id 		SERIAL,
	pla_al_id	SERIAL,
	pla_dis_id	SERIAL,
	pla_DataInicio varchar(10),
	CONSTRAINT pk_planeja PRIMARY KEY(pla_id),	
	CONSTRAINT sk_planeja UNIQUE (pla_al_id, pla_dis_id, pla_DataInicio),	
    FOREIGN KEY(pla_al_id) REFERENCES aluno(al_id),
    FOREIGN KEY(pla_dis_id) REFERENCES disciplina(dis_id)
);

CREATE TABLE rel_curr_tri(
	ctr_id  		SERIAL,
	ctr_curr_id		SERIAL,
	ctr_tr_id 		SERIAL,
	ctr_AnoInicio 		varchar(10),
	ctr_Unidade 	varchar(10),
	CONSTRAINT pk_rel_curr_tri PRIMARY KEY(ctr_id),	
	CONSTRAINT sk_rel_curr_tri UNIQUE (ctr_AnoInicio, ctr_curr_id, ctr_tr_id, ctr_Unidade),	
    FOREIGN KEY(ctr_curr_id) REFERENCES curriculo(curr_id),
    FOREIGN KEY(ctr_tr_id) REFERENCES trilha(tr_id)
);


CREATE TABLE rel_adm_curr(
	acurr_id			SERIAL,
	acurr_adm_id		SERIAL,
	acurr_curr_id 		SERIAL,
	acurr_DataInicio 	varchar(10),
	acurr_DataTermino 	varchar(10),
	CONSTRAINT pk_rel_adm_curr PRIMARY KEY(acurr_id),
    FOREIGN KEY(acurr_adm_id) REFERENCES administrador(adm_id),
    FOREIGN KEY(acurr_curr_id) REFERENCES curriculo(curr_id)
);

CREATE TABLE rel_tr_mod(
	mtr_id		SERIAL,
	mtr_tr_id 	SERIAL,
	mtr_mod_id 	SERIAL,
	CONSTRAINT pk_rel_tr_mod PRIMARY KEY(mtr_id),
    FOREIGN KEY(mtr_tr_id) REFERENCES trilha(tr_id),
    FOREIGN KEY(mtr_mod_id) REFERENCES modulo(mod_id)
);

CREATE TABLE rel_dis_mod(
	dmod_id 		SERIAL,
	dmod_dis_id		SERIAL,
	dmod_mod_id		SERIAL,
	CONSTRAINT pk_rel_dis_mod PRIMARY KEY(dmod_id),
    FOREIGN KEY(dmod_dis_id) REFERENCES disciplina(dis_id),
    FOREIGN KEY(dmod_mod_id) REFERENCES modulo(mod_id)
);

CREATE TABLE rel_us_pf(
	upf_id			SERIAL,
	upf_us_id       SERIAL,
	upf_pf_id       SERIAL,
	upf_DataInicio  varchar(10),
	upf_DataTermino varchar(10),
	CONSTRAINT pk_us_pf PRIMARY KEY(upf_id),
    FOREIGN KEY(upf_pf_id) REFERENCES perfil(pf_id),
    FOREIGN KEY(upf_us_id) REFERENCES users(us_id)
);

CREATE TABLE rel_pf_sr(
	psr_id		SERIAL,
	psr_pf_id	SERIAL,
	psr_sr_id	SERIAL,
	CONSTRAINT pk_pf_sr PRIMARY KEY(psr_id),
    FOREIGN KEY(psr_pf_id) REFERENCES perfil(pf_id),
    FOREIGN KEY(psr_sr_id) REFERENCES servico(sr_id)
);

