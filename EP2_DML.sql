
--pessoas
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000000, 'Bob', 'bob666@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000001, 'Alice', 'Alice123@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000002, 'Joe', 'joejoe@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000004, 'Meg', 'megfox@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000005, 'Julia', 'julialua@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000007, 'Amanda', 'amanda13@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000008, 'Caio', 'caiostronda@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000009, 'Robin', 'batmanS2@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000010, 'Will', 'william@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000011, 'Lucy', 'lillucy@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000012, 'Alan Turing', 'turingmachine@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000013, 'Ada Lovelece', 'allyouneedislovelace@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000014, 'Edsger Dijkstra', 'dijkstra@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000015, 'Donald Knuth', 'donaldwho@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000016, 'Albert Einstein', 'einstein@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000017, 'Leonhard Euler', 'eee@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000018, 'Euclides', 'euclides@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000019, 'Linus Torvalds', 'linuxxx@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000020, 'Gubi', 'Gubi42@uspfake.com');
INSERT INTO pessoa (pe_NUSP, pe_Nome, pe_Email) VALUES (10000021, 'Beti Kira', 'issoefacil@uspfake.com');

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


-- disciplinas
INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAC0105',
		'Fundamentos de Matemática para a Computação',
		4,
		0,
		1,
		'Discurso matemático: leitura e escrita matemática. Estratégias de demonstrações. Princípio da indução finita. Sequências, somas, recorrências e contagem. Algoritmo de Euclides. Divisibilidade nos inteiros. Sistemas de numeração. MDC e MMC. Teorema de Bézout. Teorema fundamental da aritmética. Congruências. O anel dos inteiros módulo m. Os corpos Zp. Relações de equivalência, conjunto quociente, definição de funções e operações no conjunto quociente. Ordem, fecho transitivo de relações. Conjuntos infinitos.',
		'OBJETIVOS:  Familiarizar o aluno com a linguagem matemática e com a estrutura das demonstrações matemáticas, bem como com alguns fatos e noções elementares sobre números, conjuntos, funções e relações.'
	);

INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAC0110',
		'Introdução à Computação',
		4,
		0,
		1,
		'Breve história da computação. Algoritmos: caracterização, notação, estruturas básicas. Computadores: unidades básicas, instruções, programa armazenado, endereçamento, programas em linguagem de máquina.Conceitos de linguagens algorítmicas: expressões; comandos seqüenciais, seletivos e repetitivos; entrada/saída; variáveis estruturadas; funções.Desenvolvimento e documentação de programas.Exemplos de processamento não numérico.Extensa prática de programação e depuração de programas.',
		' Objetivos: Introduzir a programação de computadores através do estudo de uma linguagem algorítmica e de exercícios práticos.'
	);

INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAC0329',
		'Álgebra Booleana e Aplicações no Projeto de Arquitetura de Computadores',
		4,
		0,
		1,
		'Sistemas de representação numérica: bases binária, octal e hexadecimal, conversão entre bases, aritmética com números binários. Noções de circuitos lógicos: funções lógicas, tabelas-verdade, portas lógicas. Noções de organização de computadores. Expressões booleanas: formas canônicas e suas formas minimais, mapas de Karnaugh e outros métodos para minimização de expressões booleanas. PLA e circuitos combinacionais. Circuitos sequenciais: flip-flops e registradores, noções de análise e projeto de circuitos sequenciais. Exemplos de circuitos: somadores, subtratores, multiplicadores, divisores, verificadores de paridade, decodificadores, seletores ou multiplexadores, demultiplexadores, comparadores, conversores de código, deslocadores e contadores. Álgebra booleana: definição axiomática, exemplos (álgebra de conjuntos, cálculo proposicional, funções lógicas), propriedades, e ordens parciais em álgebras booleanas.',
		'Objetivos: Estudo de álgebras Booleanas finitas, assim como, as suas aplicações no projeto de circuitos digitais e, em particular, de arquiteturas de computadores.'
	);
INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAT2453',
		'Cálculo Diferencial e Integral I',
		6,
		0,
		1,
		'Funções trigonométricas. Funções exponenciais. Função composta e função inversa. Limites: noção intuitiva, propriedades algébricas. Teorema do Confronto. Continuidade. Derivadas: definição, interpretações geométrica e física. Regras de derivação, regra de cadeia, derivada da função inversa e derivação implícita. Aplicações. Teorema do valor médio e consequências. Regras de LHospital. Gráficos. Resolução de problemas de Máximos e Mínimos. Integral de Riemann. Técnicas de integração. Aplicações: cálculos de volumes de revolução, comprimento de curvas. Fórmula de Taylor.',
		'Objetivos: Familiarizar o aluno com as noções de limite, derivada e integral de funções de uma variável, destacando aspectos geométricos e interpretações físicas.'
 
	);
INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAT0112',
		'Vetores e Geometria',
		4,
		0,
		1,
		'1. Vetores, operações, módulo de um vetor, ângulo de dois vetores. 2. Dependência linear, bases, mudança de bases. Sistema de coordenadas no espaço, transformação de coordenadas. 3. Bases ortogonais, matrizes ortogonais, produto escalar. Orientação do espaço, produto vetorial. 4. Equações vetoriais da reta e do plano no espaço. Paralelismo entre retas e planos. 5. Ortogonalidade entre retas e planos. Distância de dois pontos, de ponto a uma reta e a um plano. Áreas e volumes. 6. Curvas planas, cônicas. Curvas e superfícies no espaço. Noções sobre quádricas.',
		'Objetivos: Ensinar aos alunos as leis básicas do cálculo vetorial clássico e a geometria analítica em dimensão 2 e 3.'
	);
INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAC0239',
		'Introdução à Lógica e Verificação de Programas',
		4,
		0,
		2,
		'Lógica Formal: cálculo proposicional, sintaxe, semântica, métodos de prova; cálculo de predicados de primeira ordem, noções intuitivas de correção e completude. Verificação de Programas: semântica axiomática dos comandos básicos de programação; lógica de Hoare, pré- e pós-condições, comandos nulos, atribuição, seleção, iteração; invariantes, terminação. Exemplos clássicos de provas de algoritmos.',
		'Objetivos: Dar ao aluno o primeiro contato com métodos formais. Introduzir conceitos básicos para a verificação formal, assim como técnicas de demonstração de corretude de programas.'
	);

INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAE0119',
		'Introdução à Probabilidade e à Estatística',
		6,
		0,
		2,
		'1) Estatística Descritiva uni e bidimensional; 2) Probabilidade; 3) Variáveis aleatórias e principais distribuições discretas e contínuas; 4) Aproximação normal; 5) Distribuições amostrais e Teorema Limite Central; 6) Estimadores e propriedades; 7) Estimação pontual e por intervalo; 8) Testes de hipóteses para uma média, uma proporção; 9) Testes de comparação de médias e proporções; Testes qui-quadrado; 10) Teste de Hipóteses para Variância; 11) Regressão e correlação.',
		'Objetivos: Introduzir os conceitos básicos da teoria das probabilidades e da teoria estatística.'
	);
INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAC0121',
		'Algoritmos e Estruturas de Dados I',
		4,
		0,
		2,
		'Noções informais de prova de correção e medida do desempenho de algoritmos. Noções de tipos abstratos de dados. Vetores e matrizes. Strings (cadeias de caracteres). Alocação dinâmica de memória e redimensionamento de vetores. Apontadores. Listas ligadas. Estruturas ligadas não lineares. Árvores binárias. Pilhas e filas (implementadas com vetores e listas ligadas). Aplicações. Filas de prioridade (implementadas com heaps). Aplicações. Recursão. Aplicações. Algoritmos de ordenação elementares. Algoritmo quicksort. Algoritmo mergesort. Algoritmo heapsort. Algoritmo radixsort (ordenação digital). Ordenação indireta (ordenação de apontadores). Processamento elementar de texto. Aplicações. Tabelas de símbolos elementares: implementações baseadas em vetores, listas ligadas, busca binária, e árvores binárias de busca. Aplicações. As aplicações podem envolver várias estruturas de dados compostas (como vetores de listas ligadas) e várias estratégias algorítmicas (gulosa, divisão e conquista, programação dinâmica, backtracking, busca em largura, etc.).',
		'Objetivos: Introduzir técnicas básicas de programação, estruturas de dados básicas, e noções de projeto e análise de algoritmos, por meio de exemplos.'
	);
INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAC0216',
		'Técnicas de Programação I',
		4,
		2,
		2,
		'Conceitos básicos de arquitetura de computadores. Linguagem de montagem e montadores, ligação de código objeto, interface com hardware e com linguagens de alto nível. Interação com o sistema operacional no nível do shell: streams, entrada e saída padrão, redirecionamento e pipes. Shell scripts. Gerenciamento de compilação de programas e bibliotecas com ferramentas como make. Modularização de código. Ligação de módulos, estática e dinâmica. Construção de bibliotecas. Técnicas de depuração e teste de programas. Construção de um sistema em uma linguagem procedimental (por exemplo, C). Estudo de uma linguagem dinâmica de script (por exemplo, Python ou Ruby). Introdução aos conceitos de orientação a objetos no âmbito de linguagens dinâmicas.',
		'Objetivos: Expor o estudante a conceitos e ambientes de programação e integração de módulos e programas, partindo de baixo nível (linguagem de montagem), utilização de ferramentas do sistema operacional e de desenvolvimento de software até atingir os princípios de orientação a objetos. Estes tópicos são aplicados em uma parte prática que consiste em desenvolver um sistema de software em linguagem procedimental.'
	);
INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAT2454',
		'Cálculo Diferencial e Integral II',
		4,
		0,
		2,
		'Funções de duas ou mais variáveis: limites, continuidade, diferenciabilidade. ; Gradiente; Regra da cadeia; Teorema do Valor Médio; Derivadas de ordem superior; Teorema de Schwarz (enunciado); Fórmula de Taylor; Máximos e Mínimos; Multiplicadores de Lagrange.',
		' Objetivos: Aprimorar o conhecimento e as habilidades dos alunos introduzindo o cálculo diferencial de funções de duas ou mais variáveis.'
	);


--prerequisitos
--No exemplo 1, a disciplina de id 2 é pre-requisito da disciplina de id 6.
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (8, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (9, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (10, 4);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 2);


--currículos
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso, curr_Unidade)
	VALUES            ('2008'     , '2014'    , 'Bacharelado em Ciência da Computação', 'IME'       );
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2014'     , '2016'    , 'Bacharelado em Ciência da Computação', 'IME'       );
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2016'     , null      , 'Bacharelado em Ciência da Computação', 'IME'       );
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2010'     , '2015'    , 'Bacharelado em Ciência da Computação', 'ICMC'      );
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2015'     , null      , 'Bacharelado em Ciência da Computação', 'ICMC'      );

INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (1, 'Desenvolvimento de Software I');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (2, 'Desenvolvimento de Software II');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (3, 'Sistemas Paralelos e Distribuídos');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (4, 'Banco de Dados');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (5, 'Inteligência Artificial');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (6, 'Introdução à IA');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (7, 'Sistemas');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (8, 'Teoria associada à IA');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (9, 'Dados 1');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (10, 'Dados 2');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (11, 'Dados 3');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (12, 'Dados 4');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (13, 'Dados - Área de Aplicação');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (14, 'Algoritmos I');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (15, 'Algoritmos II');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (16, 'Otimização I');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (17, 'Otimização II');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (18, 'Matemática Discreta I');
INSERT INTO modulo	  (mod_Codigo, mod_Nome) VALUES (19, 'Matemática Discreta II');
--trilhas
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (1, 'Geral');
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (2, 'Sistemas de Software');
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (3, 'Inteligência Artificial');
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (4, 'Ciência de Dados');
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (5, 'Teoria da Computação');
--perfis
INSERT INTO perfil (pf_Tipo) VALUES ('aluno');
INSERT INTO perfil (pf_Tipo) VALUES ('administrador');
INSERT INTO perfil (pf_Tipo) VALUES ('monitor');
--servico
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('ADDNOTA'   , 'Adicionar Nota a um aluno');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('MODIFNOTA' , 'Modificar Nota de um aluno');
INSERT INTO servico (sr_Nome, sr_Descricao) VALUES ('CONSULNOTA', 'Consultar Nota de um aluno');
--oferecimento
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (11, 1,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (12, 2,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
INSERT INTO oferecimento (of_pr_id, of_dis_id, of_DataInicio, of_Vagas, of_Horario) VALUES (13, 3,'01/01/2019', 30, 'SEG 08:00 - 10:00, QUA 10:00 - 12:00');
--users
INSERT INTO users(us_email, us_password) VALUES ('qualquer1@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer2@usp.br', '123456');
INSERT INTO users(us_email, us_password) VALUES ('qualquer3@usp.br', '123456');
--rel_pe_us
INSERT INTO rel_pe_us (pus_pe_id, pus_us_id) VALUES (1, 1);
INSERT INTO rel_pe_us (pus_pe_id, pus_us_id) VALUES (2, 2);
INSERT INTO rel_pe_us (pus_pe_id, pus_us_id) VALUES (3, 3);
--cursa
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (1, 1, 10.0, 100);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (2, 2, 7.0, 80);
INSERT INTO cursa(cur_al_id, cur_of_id, cur_Nota, cur_Freq) VALUES (3, 3, 5.0, 70);
--planeja
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (1, 3, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (2, 4, '01/01/2020');
INSERT INTO planeja(pla_al_id, pla_dis_id, pla_DataInicio) VALUES (2, 5, '01/01/2020');
--rel_curr_tri
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (1, 1, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (2, 1, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (3, 1, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (1, 1, '2010', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (2, 1, '2010', 'IME');
--rel_adm_curr
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (19, 1, '01/01/2010', '31/12/2014');
INSERT INTO rel_adm_curr(acurr_adm_id, acurr_curr_id, acurr_DataInicio, acurr_DataTermino) VALUES (20, 2, '01/01/2018', '31/12/2020');
--rel_tr_mod
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (1, 1);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (1, 2);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (1, 3);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (2, 1);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (2, 4);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (2, 5);
--rel_dis_mod
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (1, 1);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (2, 2);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (2, 3);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (3, 1);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (4, 1);
--rel_us_pf
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (1, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (1, 2, '01/08/2017', '31/12/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (2, 1, '01/01/2017', '30/06/2017');
INSERT INTO rel_us_pf(upf_us_id, upf_pf_id, upf_DataInicio, upf_DataTermino) VALUES (3, 1, '01/01/2017', '30/06/2017');
--rel_pf_sr
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (1, 1);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (1, 2);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (1, 3);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (2, 3);
INSERT INTO rel_pf_sr(psr_pf_id, psr_sr_id) VALUES (3, 2);

