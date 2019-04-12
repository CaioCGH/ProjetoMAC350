-- AINDA FALTA BOTAR CHAVE ESTRANGEIRA
DROP TABLE IF EXISTS pessoa;
CREATE TABLE pessoa (
	pe_NUSP int,
	pe_CPF  int,
	pe_Login varchar(80),
	pe_Endereco varchar(80),
	pe_Nome varchar(80),
	pe_DataNasc varchar(10),
	pe_Sexo varchar(1),
	pe_Email varchar(80),
	PRIMARY KEY(pe_NUSP)
);

DROP TABLE IF EXISTS aluno;
CREATE TABLE aluno (
	al_NUSP int,
	al_DataIngresso  varchar(10),
	al_CodCurso int,
	al_Creditos int,
	PRIMARY KEY(al_NUSP)
);

DROP TABLE IF EXISTS professor;
CREATE TABLE professor (
	pr_NUSP int,
	pr_Area  varchar(80),
	pr_Departamento varchar(80),
	pr_DataAdmissao varchar(10),
	PRIMARY KEY(pr_NUSP)
);

DROP TABLE IF EXISTS areadeatuacao;
CREATE TABLE areadeatuacao (
	pr_NUSP int,
	ar_Atuacao  varchar(80),
	PRIMARY KEY(pr_NUSP)
);

DROP TABLE IF EXISTS administrador;
CREATE TABLE administrador (
	adm_NUSP int,
	ar_Atuacao  varchar(80),
	PRIMARY KEY(adm_NUSP)
);


DROP TABLE IF EXISTS disciplina;
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

-- MODIFY LATER 
DROP TABLE IF EXISTS prerequisitos;
CREATE TABLE prerequisitos (
	prq_DisCod int,
	prq_PreRequisitos int,
	PRIMARY KEY(prq_DisCod)
);

DROP TABLE IF EXISTS curriculo;
CREATE TABLE curriculo (
	curr_NUSP int,
	curr_AnoIni varchar(10),
	curr_AnoFim varchar(10),
	curr_Curso varchar(80),
	curr_Unidade varchar(80),
	CONSTRAINT PK_curriculo PRIMARY KEY(curr_NUSP, curr_Curso)
);

DROP TABLE IF EXISTS modulo;
CREATE TABLE modulo (
	mod_Codigo int,
	mod_Nome varchar(80),
	PRIMARY KEY(mod_Codigo)
);

DROP TABLE IF EXISTS trilha;
CREATE TABLE trilha (
	tr_Codigo int,
	tr_Nome varchar(80),
	PRIMARY KEY(tr_Codigo)
);

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
	us_Login varchar(80),
	us_Senha varchar(80),
	us_Username varchar(80),
	us_NUSP int,
	CONSTRAINT PK_usuario PRIMARY KEY(us_Login, us_NUSP)
);

DROP TABLE IF EXISTS perfil;
CREATE TABLE perfil(
	pf_Tipo varchar(80),
	PRIMARY KEY(pf_Tipo)
);

DROP TABLE IF EXISTS servicos;
CREATE TABLE servicos(
	sr_Nome varchar(80),
	sr_Descricao varchar(80),
	PRIMARY KEY(sr_Nome)
);

-- MODIFY LATER
DROP TABLE IF EXISTS oferecimento;
CREATE TABLE oferecimento(
	of_DataInicio varchar(10),
	of_NUSP int,
	of_Codigo int,
	of_Vagas int,
	of_Horario varchar(20),
	CONSTRAINT PK_oferecimento PRIMARY KEY(of_DataInicio, of_NUSP, of_Codigo, of_Vagas, of_Horario)
)

-- MODIFY LATER
DROP TABLE IF EXISTS cursa;
CREATE TABLE cursa(
	cur_NUSPAluno int,
	cur_DataIni varchar(10),
	cur_NUSPProf int,
	cur_Codigo int,
	cur_Nota float,
	cur_Freq int,
	CONSTRAINT PK_cursa PRIMARY KEY(cur_NUSPAluno, cur_DataIni, cur_NUSPProf)
)

-- MODIFY LATER
DROP TABLE IF EXISTS planeja;
CREATE TABLE planeja(
	pla_NUSP int,
	pla_Codigo int,
	pla_DataIni varchar(10),
	CONSTRAINT PK_planeja PRIMARY KEY(pla_NUSP, pla_Codigo, pla_DataIni)	
)

-- MODIFY LATER
DROP TABLE IF EXISTS rel_cur_tri;
CREATE TABLE rel_cur_tri(
	ctr_AnoIni varchar(10),
	ctr_Curso varchar(10),
	of_Codigo int,
	ctr_Unidade varchar(10),
	CONSTRAINT PK_rel_cur_tri PRIMARY KEY(ctr_AnoIni, ctr_Curso, of_Codigo, ctr_Unidade)		
)

-- MODIFY LATER
DROP TABLE IF EXISTS tr_mod;
CREATE TABLE tr_mod(
	tr_Codigo int,
	tr_Modulo varchar(10),
	CONSTRAINT PK_tr_mod PRIMARY KEY(tr_Codigo, tr_Modulo)
)

-- MODIFY LATER
DROP TABLE IF EXISTS rel_dis_mod;
CREATE TABLE rel_dis_mod(
	dm_CodigoDis int,
	dm_Mod varchar(10),
	CONSTRAINT PK_rel_dis_mod PRIMARY KEY(dm_CodigoDis, dm_Mod)
)

-- MODIFY LATER
DROP TABLE IF EXISTS us_pf;
CREATE TABLE us_pf(
	us_Login varchar(10),
	us_PerfilTipo varchar(10),
	CONSTRAINT PK_us_pf PRIMARY KEY(us_Login, us_PerfilTipo)
)

-- MODIFY LATER
DROP TABLE IF EXISTS pf_se;
CREATE TABLE pf_se(
	pf_PerfilTipo varchar(10),
	pf_Nome varchar(10),
	CONSTRAINT PK_pf_se PRIMARY KEY(pf_PerfilTipo, pf_Nome)	
)
