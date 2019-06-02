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
insert_professor(INOUT pr_id int, INOUT pr_Area text, INOUT pr_Departamento text, INOUT pr_DataAdmissao text)

insert_administrador(INOUT adm_id int)

insert_disciplina(INOUT dis_Codigo text, INOUT dis_Nome TEXT, INOUT dis_Aula int, INOUT dis_Trabalho int, INOUT dis_PeriodoIdeal int, INOUT dis_Ementa text, INOUT dis_Descricao text, OUT id int)

insert_prerequisito(INOUT prq_dis1_id int, INOUT prq_dis2_id int, OUT id int)

insert_curriculo(INOUT curr_AnoIni text, INOUT curr_AnoFim text, INOUT curr_Curso TEXT, INOUT curr_Unidade TEXT, OUT id int)

insert_modulo(INOUT mod_Codigo int, INOUT mod_Nome text, OUT id int)

insert_trilha(INOUT tr_Codigo int, INOUT tr_Nome text, OUT id int)

insert_perfil(INOUT pf_Tipo TEXT, OUT id int)

insert_servico(INOUT sr_Nome text, INOUT sr_Descricao text, OUT id int)

insert_oferecimento(INOUT of_pr_id int, INOUT of_dis_id int, INOUT of_DataInicio text, INOUT of_Vagas int, INOUT of_Horario text, OUT id int)

insert_users(INOUT us_email text, INOUT us_password text, OUT id int)

insert_rel_pe_us (INOUT pus_pe_id int, INOUT pus_us_id int, OUT id int)

insert_cursa(INOUT cur_al_id int, INOUT cur_of_id int, INOUT cur_Nota float, INOUT cur_Freq int, OUT id int)

insert_planeja(INOUT pla_al_id int, INOUT pla_dis_id int, INOUT pla_DataInicio text, OUT id int)

insert_rel_curr_tri(INOUT ctr_curr_id int, INOUT ctr_tr_id int,  INOUT ctr_AnoInicio text, INOUT ctr_Unidade text, OUT id int)

insert_rel_adm_curr(INOUT acurr_adm_id int, INOUT acurr_curr_id int, INOUT acurr_DataInicio TEXT, INOUT acurr_DataTermino TEXT, OUT id int)

insert_rel_tr_mod(INOUT mtr_tr_id INT, INOUT mtr_mod_id INT, OUT id int)

insert_rel_dis_mod(INOUT dmod_dis_id INT, INOUT dmod_mod_id INT, OUT id int)

insert_rel_us_pf(INOUT upf_us_id INT, INOUT upf_pf_id INT, INOUT upf_DataInicio text, INOUT upf_DataTermino text, OUT id int)

insert_rel_pf_sr(INOUT psr_pf_id int, INOUT psr_sr_id int, OUT id int)






