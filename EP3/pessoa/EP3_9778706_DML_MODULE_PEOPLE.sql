
--pessoas
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000000, 'Bob', 'Marley' , 'bob666@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000001, 'Alice', 'Marley', 'Alice123@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000002, 'Joe','Joe',  'joejoe@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000004, 'Meg','Fox',  'megfox@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000005, 'Julia', 'Lua', 'julialua@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000007, 'Amanda', 'Barbosa',  'amanda13@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000008, 'Caio', 'Stronda',  'caiostronda@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000009, 'Robin', 'Wood',  'batmanS2@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000010, 'Will', 'Am', 'william@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000011, 'Lucy', 'LIL', 'lillucy@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000012, 'Alan', 'Turing',  'turingmachine@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000013, 'Ada', 'Lovelece', 'allyouneedislovelace@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000014, 'Edsger', 'Dijkstra', 'dijkstra@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000015, 'Donald', 'Knuth', 'donaldwho@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000016, 'Albert', 'Einstein', 'einstein@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000017, 'Leonhard', 'Euler', 'eee@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000018, 'Euclides', 'Awl','euclides@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000019, 'Linus', 'Torvalds' , 'linuxxx@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000020, 'Marcos', 'Gubitoso','Gubi42@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000021, 'Beti', 'Kira', 'issoefacil@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000023, 'Ana', 'Carolina','primo23@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000029, 'Ana', 'Beatriz','primo29@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000031, 'Ana', 'Paula' ,'primo31@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000037, 'Ana', 'Lurdez', 'primo37@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000041, 'Ana', 'Carvalho', 'primo41@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000043, 'Ana', 'Ana', 'primo43@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000047, 'Ana', 'Diana','primo47@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000053, 'Johann', 'Lewtz', 'primo53@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000059, 'Anna', 'Caroline', 'primo59@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Sobrenome, pe_Email) VALUES (10000061, 'Anne', 'Hee', 'primo61@uspfake.com');

--ALUNOS

--Existe um novo atributo "al_nome" e "al_nusp" pra ficar coerente com a dependencia funcional.. não esquecer de inserir aqui embaixo
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (1    , '01/01/2019'   , 0001       , 0        , 0          , 0              );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (2    , '01/01/2018'     , 0001     , 0        , 0          , 20              );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (3    , '01/01/2018'     , 0001     , 0        , 0          , 21              );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (4    , '01/01/2018'     , 0002       , 0        , 0          , 22             );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (5    , '01/01/2017'     , 0001       , 0        , 5          , 50              );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (6    , '01/01/2017'     , 0001       , 0        , 6         , 51              );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (7    , '01/01/2017'     , 0002       , 0        , 7          , 52              );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (8    , '01/01/2017'     , 0002       , 0        , 8          , 53              );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (9    , '01/01/2017'     , 0003       , 0        , 9          , 54              );
INSERT INTO aluno (al_id, al_DataIngresso, al_CodCurso, al_Livres, al_Eletivas, al_Obrigatorias)
	VALUES        (10   , '01/01/2016'     , 0001       , 8        , 10         , 55              );

--PROFESSORES
--Existe um novo atributo "pr_nome" e "pr_nusp" pra ficar coerente com a dependencia funcional.. não esquecer de inserir aqui embaixo
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (11    , 'computação musical' 	, 'MAC'          , '01/01/1974'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (12    , 'computação musical' 	, 'MAC'          , '01/01/1976'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (13    , 'sistemas de informação' , 'MAC'          , '01/01/1978'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (14    , 'sistemas de informação' , 'MAC'          , '01/01/1984'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (15    , 'sistemas de informação' , 'MAC'          , '01/01/1984'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (16    , 'otimização'			 	, 'MAC'          , '01/01/1984'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (17    , 'otimização' 			, 'MAC'          , '01/01/1994'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (18    , 'matematica discreta' 	, 'MAT'          , '01/01/1994'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (19    , 'matematica discreta' 	, 'MAT'          , '01/01/2000'     );
INSERT INTO professor (pr_id , pr_Area			    	, pr_Departamento, pr_DataAdmissao)
	VALUES            (20    , 'probabilidade'		 	, 'MAE'          , '01/01/2000'     );

-- administradores
--não esquecer de inserir aqui embaixo

INSERT INTO administrador (adm_id) VALUES (19);
INSERT INTO administrador (adm_id) VALUES (20);
INSERT INTO administrador (adm_id) VALUES (21);
INSERT INTO administrador (adm_id) VALUES (22);
INSERT INTO administrador (adm_id) VALUES (23);
INSERT INTO administrador (adm_id) VALUES (24);
INSERT INTO administrador (adm_id) VALUES (25);
INSERT INTO administrador (adm_id) VALUES (26);
INSERT INTO administrador (adm_id) VALUES (27);
INSERT INTO administrador (adm_id) VALUES (28);

