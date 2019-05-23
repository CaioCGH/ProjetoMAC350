-- DROPAR NUMA ORDEM TOPOLOGICA..
DROP TABLE IF EXISTS pf_se;
DROP TABLE IF EXISTS us_pf;
DROP TABLE IF EXISTS rel_dis_mod;
DROP TABLE IF EXISTS tr_mod;
DROP TABLE IF EXISTS rel_cur_tri;
DROP TABLE IF EXISTS planeja;
DROP TABLE IF EXISTS cursa;
DROP TABLE IF EXISTS oferecimento;
DROP TABLE IF EXISTS servicos;
DROP TABLE IF EXISTS perfil;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS trilha;
DROP TABLE IF EXISTS modulo;
DROP TABLE IF EXISTS curriculo;
DROP TABLE IF EXISTS prerequisitos;
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS administrador;
DROP TABLE IF EXISTS areadeatuacao;
DROP TABLE IF EXISTS professor;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS pessoa;


CREATE TABLE pessoa (
	pe_NUSP int,
	pe_Nome varchar(80),
	pe_Email varchar(80),
	PRIMARY KEY(pe_NUSP)
);

CREATE TABLE aluno (
	al_NUSP int,
	al_DataIngresso  varchar(10),
	al_CodCurso int,
	al_Livres int,
	al_Eletivas int,
	al_Obrigatorias int,
	PRIMARY KEY(al_NUSP),
    FOREIGN KEY(al_NUSP) REFERENCES pessoa(pe_NUSP),
);

CREATE TABLE professor (
	pr_NUSP int,
	pr_Area  varchar(80),
	pr_Departamento varchar(80),
	pr_DataAdmissao varchar(10),
	PRIMARY KEY(pr_NUSP),
    FOREIGN KEY(pr_NUSP) REFERENCES pessoa(pe_NUSP),
);

CREATE TABLE areadeatuacao (
	pr_NUSP int,
	ar_Atuacao  varchar(80),
	PRIMARY KEY(pr_NUSP),
    FOREIGN KEY(pr_NUSP) REFERENCES professor(pr_NUSP)
);

CREATE TABLE administrador (
	adm_NUSP int,
	ar_Atuacao  varchar(80),
	PRIMARY KEY(adm_NUSP),
    FOREIGN KEY(adm_NUSP) REFERENCES pessoa(pe_NUSP),
);


CREATE TABLE disciplina (
	dis_Codigo int,
	dis_Nome varchar(80),
	dis_Aula int,
	dis_Trabalho int,
	dis_PeriodoIdeal int,
	dis_Ementa varchar(80),
	dis_PreRequisitos varchar(80),
	dis_Descricao varchar(1000),
	PRIMARY KEY (dis_Codigo)
);

CREATE TABLE prerequisitos (
	prq_DisCod int,
	prq_PreRequisitos int,
	PRIMARY KEY(prq_DisCod),
    FOREIGN KEY(prq_DisCod) REFERENCES disciplina(dis_Codigo)
);

CREATE TABLE curriculo (
	curr_NUSP int,
	curr_AnoIni varchar(10),
	curr_AnoFim varchar(10),
	curr_Curso varchar(80),
	curr_Unidade varchar(80),
	CONSTRAINT PK_curriculo PRIMARY KEY(curr_Curso, curr_Unidade, curr_AnoIni),
    FOREIGN KEY(curr_NUSP) REFERENCES administrador(adm_NUSP)
);

CREATE TABLE modulo (
	mod_Codigo int,
	mod_Nome varchar(80),
	PRIMARY KEY(mod_Codigo)
);

CREATE TABLE trilha (
	tr_Codigo int,
	tr_Nome varchar(80),
	PRIMARY KEY(tr_Codigo)
);

CREATE TABLE usuario (
	us_id varchar(80),
	us_password varchar(80),
	us_Email varchar(80), 
	CONSTRAINT PK_usuario PRIMARY KEY(us_id),
        FOREIGN KEY(us_id) REFERENCES pessoa(pe_NUSP),
        FOREIGN KEY(us_Email) REFERENCES pessoa(pe_Email)
);

CREATE TABLE perfil(
	pf_Tipo varchar(80),
	PRIMARY KEY(pf_Tipo)
);

CREATE TABLE servicos(
	sr_Nome varchar(80),
	sr_Descricao varchar(80),
	PRIMARY KEY(sr_Nome)
);

CREATE TABLE oferecimento(
	of_DataInicio varchar(10),
	of_NUSP int,
	of_Codigo int,
	of_Vagas int,
	of_Horario varchar(20),
	CONSTRAINT PK_oferecimento PRIMARY KEY(of_DataInicio, of_NUSP, of_Codigo),
	FOREIGN KEY(of_NUSP) REFERENCES professor(pr_NUSP)
);

CREATE TABLE cursa(
	cur_NUSPaluno int,
	cur_DataIni varchar(10),
	cur_NUSPprof int,
	cur_Codigo int,
	cur_Nota float,
	cur_Freq int,
	CONSTRAINT PK_cursa PRIMARY KEY(cur_NUSPAluno, cur_DataIni, cur_NUSPProf),
	FOREIGN KEY(cur_NUSPaluno) REFERENCES aluno(al_NUSP),
    FOREIGN KEY(cur_NUSPprof) REFERENCES professor(pr_NUSP)
);

CREATE TABLE planeja(
	pla_NUSP int,
	pla_Codigo int,
	pla_DataIni varchar(10),
	CONSTRAINT PK_planeja PRIMARY KEY(pla_NUSP, pla_Codigo, pla_DataIni),	
    FOREIGN KEY(pla_NUSP) REFERENCES aluno(al_NUSP)
);

CREATE TABLE rel_cur_tri(
	ctr_AnoIni varchar(10),
	ctr_Curso varchar(10),
	of_Codigo int,
	ctr_Unidade varchar(10),
	CONSTRAINT PK_rel_cur_tri PRIMARY KEY(ctr_AnoIni, ctr_Curso, of_Codigo, ctr_Unidade),	
    FOREIGN KEY(ctr_Curso,ctr_Unidade, ctr_AnoIni) REFERENCES curriculo(curr_Curso, curr_Unidade, curr_AnoIni),
    FOREIGN KEY(of_Codigo) REFERENCES trilha(tr_Codigo)
);

CREATE TABLE tr_mod(
	tr_Codigo int,
	tr_Modulo int,
	CONSTRAINT PK_tr_mod PRIMARY KEY(tr_Codigo, tr_Modulo),
    FOREIGN KEY(tr_Codigo) REFERENCES trilha(tr_Codigo),
    FOREIGN KEY(tr_Modulo) REFERENCES modulo(mod_Codigo)
);

CREATE TABLE rel_dis_mod(
	dm_CodigoDis int,
	dm_Mod varchar(80),
	CONSTRAINT PK_rel_dis_mod PRIMARY KEY(dm_CodigoDis, dm_Mod),
    FOREIGN KEY(dm_CodigoDis) REFERENCES disciplina(dis_Codigo),
    FOREIGN KEY(dm_Mod) REFERENCES perfil(pf_Tipo)
);

-- MODIFY LATER
CREATE TABLE us_pf(
	us_Login varchar(10),
	us_PerfilTipo varchar(80),
	CONSTRAINT PK_us_pf PRIMARY KEY(us_Login, us_PerfilTipo),
    FOREIGN KEY(us_Login) REFERENCES usuario(us_Login),
    FOREIGN KEY(us_PerfilTipo) REFERENCES perfil(pf_Tipo)
);

-- MODIFY LATER
CREATE TABLE pf_se(
	pf_PerfilTipo varchar(10),
	pf_Nome varchar(10),
	CONSTRAINT PK_pf_se PRIMARY KEY(pf_PerfilTipo, pf_Nome),
    FOREIGN KEY(pf_PerfilTipo) REFERENCES perfil(pf_Tipo),
    FOREIGN KEY(pf_Nome) REFERENCES servicos(sr_Nome)
);

INSERT INTO pessoa VALUES (10000000, 'Bob', 'bob666@uspfake.com');
INSERT INTO pessoa VALUES (10000001, 'Alice', 'Alice123@uspfake.com');
INSERT INTO pessoa VALUES (10000002, 'Joe', 'joejoe@uspfake.com');
INSERT INTO pessoa VALUES (10000004, 'Meg', 'megfox@uspfake.com');
INSERT INTO pessoa VALUES (10000005, 'Julia', 'julialua@uspfake.com');
INSERT INTO pessoa VALUES (10000007, 'Amanda', 'amanda13@uspfake.com');
INSERT INTO pessoa VALUES (10000008, 'Caio', 'caiostronda@uspfake.com');
INSERT INTO pessoa VALUES (10000009, 'Robin', 'batmanS2@uspfake.com');
INSERT INTO pessoa VALUES (10000010, 'Will', 'william@uspfake.com');
INSERT INTO pessoa VALUES (10000011, 'Lucy', 'lillucy@uspfake.com');
INSERT INTO pessoa VALUES (10000012, 'Alan Turing', 'turingmachine@uspfake.com');
INSERT INTO pessoa VALUES (10000013, 'Ada Lovelece', 'allyouneedislovelace@uspfake.com');
INSERT INTO pessoa VALUES (10000014, 'Edsger Dijkstra', 'dijkstra@uspfake.com');
INSERT INTO pessoa VALUES (10000015, 'Donald Knuth', 'donaldwho@uspfake.com');
INSERT INTO pessoa VALUES (10000016, 'Albert Einstein', 'einstein@uspfake.com');
INSERT INTO pessoa VALUES (10000017, 'Leonhard Euler', 'eee@uspfake.com');
INSERT INTO pessoa VALUES (10000018, 'Euclides', 'euclides@uspfake.com');
INSERT INTO pessoa VALUES (10000019, 'Linus Torvalds', 'linuxxx@uspfake.com');
INSERT INTO pessoa VALUES (10000020, 'Gubi', 'Gubi42@uspfake.com');
INSERT INTO pessoa VALUES (10000021, 'Beti Kira', 'issoefacil@uspfake.com');

INSERT INTO aluno VALUES (10000000);
INSERT INTO aluno VALUES (10000001);
INSERT INTO aluno VALUES (10000002);
INSERT INTO aluno VALUES (10000004);
INSERT INTO aluno VALUES (10000005);
INSERT INTO aluno VALUES (10000007);
INSERT INTO aluno VALUES (10000008);
INSERT INTO aluno VALUES (10000009);
INSERT INTO aluno VALUES (10000010);
INSERT INTO aluno VALUES (10000011);

INSERT INTO professor VALUES (10000012);
INSERT INTO professor VALUES (10000013);
INSERT INTO professor VALUES (10000014);
INSERT INTO professor VALUES (10000015);
INSERT INTO professor VALUES (10000016);
INSERT INTO professor VALUES (10000017);
INSERT INTO professor VALUES (10000018);
INSERT INTO professor VALUES (10000019);
INSERT INTO professor VALUES (10000020);
INSERT INTO professor VALUES (10000021);

