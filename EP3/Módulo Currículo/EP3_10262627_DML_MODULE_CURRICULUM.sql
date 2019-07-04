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

INSERT INTO disciplina (dis_Codigo, dis_Nome, dis_Aula, dis_Trabalho, dis_PeriodoIdeal, dis_Ementa, dis_Descricao)
	VALUES  (
		'MAC0000',
		'Entrada no Curso',
		0,
		0,
		0,
		'Começar a fazer faculdade.',
		'Objetivos: Conhecer novos horizontes.'
	);

--prerequisitos
--No exemplo 1, a disciplina de id 2 é pre-requisito da disciplina de id 6.
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (8, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (9, 2);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (10, 4);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (10, 11);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (9, 11);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (8, 11);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (7, 11);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (6, 11);
INSERT INTO prerequisito (prq_dis1_id, prq_dis2_id) VALUES (5, 11);


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
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2010'     , '2015'    , 'Bacharelado em Sistemas de Informações', 'EACH'    );
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2015'     , null      , 'Bacharelado em Sistemas de Informações', 'EACH'	);
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2016'     , null      , 'Bacharelado em Estatística'		  , 'IME'       );
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2013'     , '2016'    , 'Bacharelado em Estatística'		  , 'IME'       );
INSERT INTO curriculo (curr_AnoIni, curr_AnoFim, curr_Curso                           , curr_Unidade)
	VALUES            ('2012'     , '2015'    , 'Licenciatura em Matemática'		  , 'IME'       );


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
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (1, 'Teoria dos Quantum');
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (2, 'Matemático');
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (3, 'White Hat');
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (4, 'Black Hat');
INSERT INTO trilha	  (tr_Codigo, tr_Nome) VALUES (5, 'Red Hat');

--rel_curr_tri
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (1, 1, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (2, 1, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (3, 1, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (1, 3, '2010', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (2, 3, '2010', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (1, 4, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (2, 5, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (3, 6, '2016', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (1, 7, '2010', 'IME');
INSERT INTO rel_curr_tri(ctr_curr_id, ctr_tr_id, ctr_AnoInicio, ctr_Unidade) VALUES (2, 9, '2010', 'IME');

--rel_tr_mod
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (1, 1);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (1, 2);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (1, 3);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (2, 1);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (2, 4);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (2, 5);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (3, 1);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (3, 2);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (3, 3);
INSERT INTO rel_tr_mod(mtr_tr_id, mtr_mod_id) VALUES (4, 1);

--rel_dis_mod
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (1, 1);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (2, 2);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (2, 3);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (3, 1);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (4, 1);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (1, 2);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (2, 1);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (2, 1);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (3, 2);
INSERT INTO rel_dis_mod(dmod_dis_id, dmod_mod_id) VALUES (4, 2);
