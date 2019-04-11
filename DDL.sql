DROP TABLE IF EXISTS pessoa;
CREATE TABLE pessoa (
	pe_NUSP varchar(10),
	pe_CPF  varchar(10),
	pe_Login varchar(10),
	pe_Endereco varchar(10),
	pe_Nome varchar(10),
	pe_DataNasc varchar(10),
	pe_Sexo varchar(10),
	pe_Email varchar(10),
);

DROP TABLE IF EXISTS aluno;
CREATE TABLE aluno (
	al_NUSP varchar(10),
	al_DataIngresso  varchar(10),
	al_CodCurso varchar(10),
	al_Creditos varchar(10),
);

DROP TABLE IF EXISTS professor;
CREATE TABLE professor (
	pr_NUSP varchar(10),
	al_Area  varchar(10),
	al_Departamento varchar(10),
	al_DataAdmissao varchar(10),
);

DROP TABLE IF EXISTS areadeatuacao;
CREATE TABLE areadeatuacao (
	pr_NUSP varchar(10),
	ar_Atuacao  varchar(10),
);

DROP TABLE IF EXISTS administrador;
CREATE TABLE administrador (
	adm_NUSP varchar(10),
	ar_Atuacao  varchar(10),
);


DROP TABLE IF EXISTS disciplina;
CREATE TABLE disciplina (
	dis_Codigo varchar(10),
	dis_Nome varchar(10),
	dis_Aula varchar(10),
	dis_Trabalho varchar(10),
	dis_PeriodoIdeal varchar(10),
	dis_Ementa varchar(10),
	dis_PreRequisitos varchar(10),
	dis_Descricao varchar(10),
);

DROP TABLE IF EXISTS prerequisitos;
CREATE TABLE prerequisitos (
	prq_DisCod varchar(10),
	prq_PreRequisitos varchar(10),
);

DROP TABLE IF EXISTS curriculo;
CREATE TABLE curriculo (
	curr_NUSP varchar(10),
	curr_AnoIni varchar(10),
	curr_AnoFim varchar(10),
	curr_Curso varchar(10),
	curr_Unidade varchar(10),
);

DROP TABLE IF EXISTS modulo;
CREATE TABLE modulo (
	mod_Codigo varchar(10),
	mod_Nome varchar(10),
);

DROP TABLE IF EXISTS trilha;
CREATE TABLE trilha (
	tr_Codigo varchar(10),
	tr_Nome varchar(10),
);

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
	us_Login varchar(10),
	us_Senha varchar(10),
	us_Username varchar(10),
	us_NUSP varchar(10),
);

DROP TABLE IF EXISTS perfil;
CREATE TABLE perfil(
	pf_Tipo varchar(10),
);

DROP TABLE IF EXISTS servicos;
CREATE TABLE servicos(
	sr_Nome varchar(10),
	sr_Descricao varchar(10),
);

DROP TABLE IF EXISTS oferecimento;
CREATE TABLE oferecimento(
	of_DataInicio varchar(10),
	of_NUSP varchar(10),
	of_Codigo varchar(10),
	of_Vagas varchar(10),
	of_Horario varchar(10),
)

DROP TABLE IF EXISTS cursa;
CREATE TABLE cursa(
	cur_NUSPaluno varchar(10),
	cur_Dataini varchar(10),
	cur_NUSPprof varchar(10),
	cur_Codigo varchar(10),
	cur_Nota varchar(10),
	cur_Freq varchar(10),
)

DROP TABLE IF EXISTS planeja;
CREATE TABLE planeja(
	pla_NUSP varchar(10),
	pla_Codigo varchar(10),
	pla_DataIni varchar(10),
)

DROP TABLE IF EXISTS rel_cur_tri;
CREATE TABLE rel_cur_tri(
	ctr_AnoIni varchar(10),
	ctr_Curso varchar(10),
	of_Codigo varchar(10),
	ctr_Unidade varchar(10),
)

DROP TABLE IF EXISTS tr_mod;
CREATE TABLE tr_mod(
	tr_Codigo varchar(10),
	tr_Modulo varchar(10),
)

DROP TABLE IF EXISTS rel_dis_mod;
CREATE TABLE rel_dis_mod(
	dm_Codigodis varchar(10),
	dm_Mod varchar(10),
)

DROP TABLE IF EXISTS us_pf;
CREATE TABLE us_pf(
	us_Login varchar(10),
	us_PerfilTipo varchar(10),
)

DROP TABLE IF EXISTS pf_se;
CREATE TABLE pf_se(
	pf_PerfilTipo varchar(10),
	pf_Nome varchar(10),
)