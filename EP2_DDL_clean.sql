-- topologico
-- rel_adm_curr
-- rel_pe_us
-- rel_pf_sr
-- rel_us_pf
-- rel_dis_mod
-- rel_tr_mod
-- rel_curr_tri
-- planeja
-- cursa
-- oferecimento
-- servico
-- perfil
-- trilha
-- modulo
-- curriculo
-- prerequisito
-- disciplina
-- administrador
-- professor
-- aluno
-- pessoa
-- users


--rel_adm_curr
DELETE FROM rel_adm_curr WHERE acurr_adm_id = 19 AND acurr_curr_id = 1;
DELETE FROM rel_adm_curr WHERE acurr_adm_id = 20 AND acurr_curr_id = 2;


--rel_pe_us
DELETE FROM rel_pe_us WHERE pus_pe_id = 1 AND pus_us_id = 1;
DELETE FROM rel_pe_us WHERE pus_pe_id = 2 AND pus_us_id = 2;
DELETE FROM rel_pe_us WHERE pus_pe_id = 3 AND pus_us_id = 3;


--rel_pf_sr
DELETE FROM rel_pf_sr WHERE psr_pf_id = 1 AND psr_sr_id = 1;
DELETE FROM rel_pf_sr WHERE psr_pf_id = 1 AND psr_sr_id = 2;
DELETE FROM rel_pf_sr WHERE psr_pf_id = 1 AND psr_sr_id = 3;
DELETE FROM rel_pf_sr WHERE psr_pf_id = 2 AND psr_sr_id = 3;
DELETE FROM rel_pf_sr WHERE psr_pf_id = 3 AND psr_sr_id = 2;


--rel_us_pf
DELETE FROM rel_us_pf WHERE upf_us_id = 1 AND upf_pf_id = 1;
DELETE FROM rel_us_pf WHERE upf_us_id = 1 AND upf_pf_id = 2;
DELETE FROM rel_us_pf WHERE upf_us_id = 2 AND upf_pf_id = 1;
DELETE FROM rel_us_pf WHERE upf_us_id = 3 AND upf_pf_id = 1;



--rel_dis_mod
DELETE FROM rel_dis_mod WHERE dmod_dis_id = 1 AND dmod_mod_id = 1;
DELETE FROM rel_dis_mod WHERE dmod_dis_id = 2 AND dmod_mod_id = 2;
DELETE FROM rel_dis_mod WHERE dmod_dis_id = 2 AND dmod_mod_id = 3;
DELETE FROM rel_dis_mod WHERE dmod_dis_id = 3 AND dmod_mod_id = 1;
DELETE FROM rel_dis_mod WHERE dmod_dis_id = 4 AND dmod_mod_id = 1;


--rel_tr_mod
DELETE FROM rel_tr_mod WHERE mtr_tr_id = 1 AND mtr_mod_id = 1;
DELETE FROM rel_tr_mod WHERE mtr_tr_id = 1 AND mtr_mod_id = 2;
DELETE FROM rel_tr_mod WHERE mtr_tr_id = 1 AND mtr_mod_id = 3;
DELETE FROM rel_tr_mod WHERE mtr_tr_id = 2 AND mtr_mod_id = 1;
DELETE FROM rel_tr_mod WHERE mtr_tr_id = 2 AND mtr_mod_id = 4;
DELETE FROM rel_tr_mod WHERE mtr_tr_id = 2 AND mtr_mod_id = 5;

--rel_curr_tri
DELETE FROM rel_curr_tri WHERE ctr_curr_id = 1 AND ctr_tr_id = 1;
DELETE FROM rel_curr_tri WHERE ctr_curr_id = 2 AND ctr_tr_id = 1;
DELETE FROM rel_curr_tri WHERE ctr_curr_id = 3 AND ctr_tr_id = 1;



--planeja
DELETE FROM planeja WHERE pla_al_id = 1 AND pla_dis_id = 3;
DELETE FROM planeja WHERE pla_al_id = 2 AND pla_dis_id = 4;
DELETE FROM planeja WHERE pla_al_id = 2 AND pla_dis_id = 5;


--cursa
DELETE FROM cursa WHERE cur_al_id = 1 AND cur_of_id = 1;
DELETE FROM cursa WHERE cur_al_id = 2 AND cur_of_id = 2;
DELETE FROM cursa WHERE cur_al_id = 3 AND cur_of_id = 3;


--oferecimento
DELETE FROM oferecimento WHERE of_pr_id = 11 AND of_dis_id = 1;
DELETE FROM oferecimento WHERE of_pr_id = 12 AND of_dis_id = 2;
DELETE FROM oferecimento WHERE of_pr_id = 13 AND of_dis_id = 3;


--servico
DELETE FROM servico WHERE sr_Nome = 'ADDNOTA';
DELETE FROM servico WHERE sr_Nome = 'MODIFNOTA';
DELETE FROM servico WHERE sr_Nome = 'CONSULNOTA';


--perfis
DELETE FROM perfil WHERE pf_Tipo = 'aluno';
DELETE FROM perfil WHERE pf_Tipo = 'administrador';
DELETE FROM perfil WHERE pf_Tipo = 'monitor';



--trilhas
DELETE FROM trilha WHERE tr_Codigo = 1;
DELETE FROM trilha WHERE tr_Codigo = 2;
DELETE FROM trilha WHERE tr_Codigo = 3;
DELETE FROM trilha WHERE tr_Codigo = 4;
DELETE FROM trilha WHERE tr_Codigo = 5;

-- modulo
DELETE FROM modulo WHERE mod_Codigo = 1;
DELETE FROM modulo WHERE mod_Codigo = 2;
DELETE FROM modulo WHERE mod_Codigo = 3;
DELETE FROM modulo WHERE mod_Codigo = 4;
DELETE FROM modulo WHERE mod_Codigo = 5;
DELETE FROM modulo WHERE mod_Codigo = 6;
DELETE FROM modulo WHERE mod_Codigo = 7;
DELETE FROM modulo WHERE mod_Codigo = 8;
DELETE FROM modulo WHERE mod_Codigo = 9;
DELETE FROM modulo WHERE mod_Codigo = 10;
DELETE FROM modulo WHERE mod_Codigo = 11;
DELETE FROM modulo WHERE mod_Codigo = 12;
DELETE FROM modulo WHERE mod_Codigo = 13;
DELETE FROM modulo WHERE mod_Codigo = 14;
DELETE FROM modulo WHERE mod_Codigo = 15;
DELETE FROM modulo WHERE mod_Codigo = 16;
DELETE FROM modulo WHERE mod_Codigo = 17;
DELETE FROM modulo WHERE mod_Codigo = 18;
DELETE FROM modulo WHERE mod_Codigo = 19;


--currículos
DELETE FROM curriculo WHERE curr_AnoIni = '2008' 
						AND curr_AnoFim = '2014' 
						AND curr_Curso = 'Bacharelado em Ciência da Computação'
						AND curr_Unidade = 'IME';

DELETE FROM curriculo WHERE curr_AnoIni = '2014' 
						AND curr_AnoFim = '2016' 
						AND curr_Curso = 'Bacharelado em Ciência da Computação'
						AND curr_Unidade = 'IME';

DELETE FROM curriculo WHERE curr_AnoIni = '2016'
						AND curr_AnoFim = null 
						AND curr_Curso = 'Bacharelado em Ciência da Computação'
						AND curr_Unidade = 'ICMC';

DELETE FROM curriculo WHERE curr_AnoIni = '2010'
						AND curr_AnoFim = '2015' 
						AND curr_Curso = 'Bacharelado em Ciência da Computação'
						AND curr_Unidade = 'ICMC';

DELETE FROM curriculo WHERE curr_AnoIni = '2010'
						AND curr_AnoFim = '2015' 
						AND curr_Curso = 'Bacharelado em Ciência da Computação'
						AND curr_Unidade = 'ICMC';

DELETE FROM curriculo WHERE curr_AnoIni = '2015'
						AND curr_AnoFim = null 
						AND curr_Curso = 'Bacharelado em Ciência da Computação'
						AND curr_Unidade = 'ICMC';




--prerequisitos
--No exemplo 1, a disciplina de id 2 é pre-requisito da disciplina de id 6.
DELETE FROM prerequisito WHERE prq_dis1_id = 6 AND prq_dis2_id = 2;
DELETE FROM prerequisito WHERE prq_dis1_id = 8 AND prq_dis2_id = 2;
DELETE FROM prerequisito WHERE prq_dis1_id = 9 AND prq_dis2_id = 2;
DELETE FROM prerequisito WHERE prq_dis1_id = 10 AND prq_dis2_id = 4;
DELETE FROM prerequisito WHERE prq_dis1_id = 1 AND prq_dis2_id = 2;




-- disciplinas
DELETE FROM disciplina WHERE dis_Codigo = 'MAC0105';
DELETE FROM disciplina WHERE dis_Codigo = 'MAC0110';
DELETE FROM disciplina WHERE dis_Codigo = 'MAC0329';
DELETE FROM disciplina WHERE dis_Codigo = 'MAT2453';
DELETE FROM disciplina WHERE dis_Codigo = 'MAT0112';
DELETE FROM disciplina WHERE dis_Codigo = 'MAC0239';
DELETE FROM disciplina WHERE dis_Codigo = 'MAE0119';
DELETE FROM disciplina WHERE dis_Codigo = 'MAC0121';
DELETE FROM disciplina WHERE dis_Codigo = 'MAC0216';
DELETE FROM disciplina WHERE dis_Codigo = 'MAT2454';


-- administradores
--não esquecer de inserir aqui embaixo

DELETE FROM administrador WHERE adm_id = 19;
DELETE FROM administrador WHERE adm_id = 20;



--PROFESSORES
--Existe um novo atributo "pr_nome" e "pr_nusp" pra ficar coerente com a dependencia funcional.. não esquecer de inserir aqui embaixo
DELETE FROM professor WHERE pr_id = 11;
DELETE FROM professor WHERE pr_id = 12;
DELETE FROM professor WHERE pr_id = 13;
DELETE FROM professor WHERE pr_id = 14;
DELETE FROM professor WHERE pr_id = 15;
DELETE FROM professor WHERE pr_id = 16;
DELETE FROM professor WHERE pr_id = 17;
DELETE FROM professor WHERE pr_id = 18;
DELETE FROM professor WHERE pr_id = 19;
DELETE FROM professor WHERE pr_id = 20;

--ALUNOS

--Existe um novo atributo "al_nome" e "al_nusp" pra ficar coerente com a dependencia funcional.. não esquecer de inserir aqui embaixo
DELETE FROM aluno WHERE al_id = 1;
DELETE FROM aluno WHERE al_id = 2;
DELETE FROM aluno WHERE al_id = 3;
DELETE FROM aluno WHERE al_id = 4;
DELETE FROM aluno WHERE al_id = 5;
DELETE FROM aluno WHERE al_id = 6;
DELETE FROM aluno WHERE al_id = 7;
DELETE FROM aluno WHERE al_id = 8;
DELETE FROM aluno WHERE al_id = 9;
DELETE FROM aluno WHERE al_id = 10;

--pessoas
DELETE FROM pessoa WHERE pe_NUSP = 10000000;
DELETE FROM pessoa WHERE pe_NUSP = 10000001;
DELETE FROM pessoa WHERE pe_NUSP = 10000002;
DELETE FROM pessoa WHERE pe_NUSP = 10000004;
DELETE FROM pessoa WHERE pe_NUSP = 10000005;
DELETE FROM pessoa WHERE pe_NUSP = 10000007;
DELETE FROM pessoa WHERE pe_NUSP = 10000008;
DELETE FROM pessoa WHERE pe_NUSP = 10000009;
DELETE FROM pessoa WHERE pe_NUSP = 10000010;
DELETE FROM pessoa WHERE pe_NUSP = 10000011;
DELETE FROM pessoa WHERE pe_NUSP = 10000012;
DELETE FROM pessoa WHERE pe_NUSP = 10000013;
DELETE FROM pessoa WHERE pe_NUSP = 10000014;
DELETE FROM pessoa WHERE pe_NUSP = 10000015;
DELETE FROM pessoa WHERE pe_NUSP = 10000016;
DELETE FROM pessoa WHERE pe_NUSP = 10000017;
DELETE FROM pessoa WHERE pe_NUSP = 10000018;
DELETE FROM pessoa WHERE pe_NUSP = 10000019;
DELETE FROM pessoa WHERE pe_NUSP = 10000020;
DELETE FROM pessoa WHERE pe_NUSP = 10000021;








--users
DELETE FROM users WHERE us_email = 'qualquer1@usp.br';
DELETE FROM users WHERE us_email = 'qualquer2@usp.br';
DELETE FROM users WHERE us_email = 'qualquer3@usp.br';





