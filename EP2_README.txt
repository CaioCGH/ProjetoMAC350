Bruna Meneguzzi                         9327136
Caio Calisto Gaede Hirakawa             7590899
Eduardo Freire de Carvalho Lima        10262627
Jiang Zhi                               9778706
Matheus Santos                         10297672


Para rodar o script sql para criar a tabela usamos o comando abaixo, onde myusername deve ser trocado pelo seu usuário e mydatabase deve ser trocado pelo seu database no psql.

createdb mydatabase
psql -U myusername -d mydatabase -a -f EP2_DDL_FIXED.sql
psql -U myusername -d mydatabase -a -f EP2_DML.sql
psql -U myusername -d mydatabase -a -f EP2_DML_CREATE_GROUP.sql
psql -U myusername -d mydatabase -a -f EP2_DML_UPDATE_GROUP.sql
psql -U myusername -d mydatabase -a -f EP2_DML_DELETE_GROUP.sql
psql -U myusername -d mydatabase -a -f EP2_DML_RETRIVAL_GROUP.sql

E para rodar o script sql para deletar a tabela usamos o comando abaixo.
psql -U myusername -d mydatabase -a -f EP2_DML_CLEAN.sql

As funções dentro do EP2_DML_CREATE_GROUP.sql

Função e exemplo de inserção de pessoa:
insert_pessoa(INOUT pe_email text, INOUT pe_nusp integer, INOUT pe_nome text, OUT id int)
SELECT * FROM insert_pessoa(0000000, 'Teste', 'teste@email.com');

Função e exemplo de inserção de aluno:
insert_aluno(INOUT al_id int, INOUT al_DataIngresso text, INOUT al_CodCurso int, INOUT al_Livres int, INOUT al_Eletivas int, INOUT al_Obrigatorias int, OUT id int)
SELECT * FROM insert_aluno(20, '01/01/2017', 0001, 0, 5, 50);

Função e exemplo de inserção de professor:
insert_professor(INOUT pr_id int, INOUT pr_Area text, INOUT pr_Departamento text, INOUT pr_DataAdmissao text)
SELECT * FROM insert_professor (11, 'computação musical', 'MAC', '01/01/1974');

Função e exemplo de inserção de aluno:
insert_administrador(INOUT adm_id int)
SELECT * FROM insert_administrador (19);

Função e exemplo de inserção de disciplina:
insert_disciplina(INOUT dis_Codigo text, INOUT dis_Nome TEXT, INOUT dis_Aula int, INOUT dis_Trabalho int, INOUT dis_PeriodoIdeal int, INOUT dis_Ementa text, INOUT dis_Descricao text, OUT id int)
SELECT * FROM insert_disciplina(MAC0105','Fundamentos de Matemática para a Computação',4, 0, 1,
		'Discurso matemático: leitura e escrita matemática. Estratégias de demonstrações. Princípio da indução finita. Sequências, somas, recorrências e contagem. Algoritmo de Euclides. Divisibilidade nos inteiros. Sistemas de numeração. MDC e MMC. Teorema de Bézout. Teorema fundamental da aritmética. Congruências. O anel dos inteiros módulo m. Os corpos Zp. Relações de equivalência, conjunto quociente, definição de funções e operações no conjunto quociente. Ordem, fecho transitivo de relações. Conjuntos infinitos.',
		'OBJETIVOS:  Familiarizar o aluno com a linguagem matemática e com a estrutura das demonstrações matemáticas, bem como com alguns fatos e noções elementares sobre números, conjuntos, funções e relações.'
	);

Função e exemplo de inserção de prerequisito:
insert_prerequisito(INOUT prq_dis1_id int, INOUT prq_dis2_id int, OUT id int)
SELECT * FROM insert_prerequisito(6, 2)


Função e exemplo de inserção de curriculo:
insert_curriculo(INOUT curr_AnoIni text, INOUT curr_AnoFim text, INOUT curr_Curso TEXT, INOUT curr_Unidade TEXT, OUT id int)
SELECT * FROM insert_curriculo('2008','2014', 'Bacharelado em Ciência da Computação', 'IME');

Função e exemplo de inserção de modulo:
insert_modulo(INOUT mod_Codigo int, INOUT mod_Nome text, OUT id int)
SELECT * FROM insert_modulo(1, 'Desenvolvimento de Software I');

Função e exemplo de inserção de trilha:
insert_trilha(INOUT tr_Codigo int, INOUT tr_Nome text, OUT id int)
SELECT * FROM insert_trilha(1, 'Geral');

Função e exemplo de inserção de perfil:
insert_perfil(INOUT pf_Tipo TEXT, OUT id int)
SELECT * FROM insert_perfil('aluno');

Função e exemplo de inserção de servico:
insert_servico(INOUT sr_Nome text, INOUT sr_Descricao text, OUT id int)
SELECT * FROM insert_servico('ADDNOTA','Adicionar Nota a um aluno');

Função e exemplo de inserção de oferecimento:
insert_oferecimento(INOUT of_pr_id int, INOUT of_dis_id int, INOUT of_DataInicio text, INOUT of_Vagas int, INOUT of_Horario text, OUT id int)
SELECT * FROM insert_oferecimento(1, 1,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');

Função e exemplo de inserção de users:
insert_users(INOUT us_email text, INOUT us_password text, OUT id int)
SELECT * FROM insert_users('qualquer1@usp.br', '123456');

Função e exemplo de inserção de rel_pe_us:
insert_rel_pe_us (INOUT pus_pe_id int, INOUT pus_us_id int, OUT id int)
SELECT * FROM insert_rel_pe_us (1, 1);

Função e exemplo de inserção de cursa:
insert_cursa(INOUT cur_al_id int, INOUT cur_of_id int, INOUT cur_Nota float, INOUT cur_Freq int, OUT id int)
SELECT * FROM insert_cursa (1, 1, 10.0, 100);

Função e exemplo de inserção de planeja:
insert_planeja(INOUT pla_al_id int, INOUT pla_dis_id int, INOUT pla_DataInicio text, OUT id int)
SELECT * FROM insert_planeja (1, 1, '01/01/2020');

Função e exemplo de inserção de rel_curr_tri:
insert_rel_curr_tri(INOUT ctr_curr_id int, INOUT ctr_tr_id int,  INOUT ctr_AnoInicio text, INOUT ctr_Unidade text, OUT id int)
SELECT * FROM insert_rel_curr_tri (1, 1, '2016', 'IME');

Função e exemplo de inserção de rel_adm_curr:
insert_rel_adm_curr(INOUT acurr_adm_id int, INOUT acurr_curr_id int, INOUT acurr_DataInicio TEXT, INOUT acurr_DataTermino TEXT, OUT id int)
SELECT * FROM insert_rel_adm_curr (1, 1, '01/01/2010', '31/12/2014');

Função e exemplo de inserção de rel_tr_mod:
insert_rel_tr_mod(INOUT mtr_tr_id INT, INOUT mtr_mod_id INT, OUT id int)
SELECT * FROM insert_rel_tr_mod (1, 1);

Função e exemplo de inserção de rel_dis_mod:
insert_rel_dis_mod(INOUT dmod_dis_id INT, INOUT dmod_mod_id INT, OUT id int)
SELECT * FROM insert_rel_dis_mod (1, 1);

Função e exemplo de inserção de rel_us_pf:
insert_rel_us_pf(INOUT upf_us_id INT, INOUT upf_pf_id INT, INOUT upf_DataInicio text, INOUT upf_DataTermino text, OUT id int)
SELECT * FROM insert_rel_us_pf(1, 1, '01/01/2017', '30/06/2017');

Função e exemplo de inserção de rel_pf_sr:
insert_rel_pf_sr(INOUT psr_pf_id int, INOUT psr_sr_id int, OUT id int)
SELECT * FROM insert_rel_pf_sr(1, 1);





