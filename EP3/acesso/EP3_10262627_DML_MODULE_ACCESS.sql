--perfis
INSERT INTO perfil (pf_Tipo) VALUES ('aluno');
INSERT INTO perfil (pf_Tipo) VALUES ('administrador');
INSERT INTO perfil (pf_Tipo) VALUES ('monitor');
INSERT INTO perfil (pf_Tipo) VALUES ('professor');
INSERT INTO perfil (pf_Tipo) VALUES ('visitante');
INSERT INTO perfil (pf_Tipo) VALUES ('aluno de fora');
INSERT INTO perfil (pf_Tipo) VALUES ('pesquisador');
INSERT INTO perfil (pf_Tipo) VALUES ('aluno especial');
INSERT INTO perfil (pf_Tipo) VALUES ('palestrante');
INSERT INTO perfil (pf_Tipo) VALUES ('funcionário');


--servico
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('ADDNOTA'   , 'Adicionar Nota a um aluno');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('MODIFNOTA' , 'Modificar Nota de um aluno');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('CONSULNOTA', 'Consultar Nota de um aluno');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('INDISC'    , 'Inscrever na disciplina');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('TRADISC'	, 'Trancar a disciplina');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('CRIADISC' 	, 'Criar uma disciplina');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('MREQ'		, 'Mandar requerimento');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('RREQ' 		, 'Recusar requerimento');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('AREQ'		, 'Aceitar requerimento');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('APES'		, 'Solicitação de aproveitamento de estudos');
	
--users
INSERT INTO users(us_email, us_password) VALUES ('qualquer1@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer2@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer3@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer4@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer5@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer6@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer7@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer8@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer9@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer10@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer11@usp.br', '123456');

--rel_us_pf
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (1, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (1, 2, '01/08/2017', '31/12/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (2, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (3, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (4, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (5, 2, '01/08/2017', '31/12/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (6, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (7, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (8, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (9, 2, '01/08/2017', '31/12/2017');

--rel_pf_sr
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (1, 1);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (1, 2);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (1, 3);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (2, 4);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (2, 5);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (2, 6);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (2, 7);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (2, 8);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (2, 9);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (2, 10);

