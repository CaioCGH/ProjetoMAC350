Bruna Meneguzzi                         9327136
Caio Calisto Gaede Hirakawa             7590899
Eduardo Freire de Carvalho Lima        10262627
Jiang Zhi                               9778706
Matheus Santos                         10297672

Instalação de ferramentas da API
Nesse projeto usamos o Flask do Python e para instalar suas ferramentas, primeiro iremos criar um environment

No script, iremos remover a database se existir e criamos a database novamente, depois rodamos os scripts de sql para os bancos de dados correspondentes, no script precisamos mudar o myusername deve ser trocado por seu usuário.

dropdb pessoa
dropdb acesso
dropdb curriculo
dropdb acesso-pessoa
dropdb pessoa-curriculo 

createdb pessoa
createdb acesso
createdb curriculo
createdb acesso-pessoa
createdb pessoa-curriculo 

psql -U myusername -d mydatabase -a -f EP2_DDL_FIXED.sql
psql -U myusername  -d mydatabase -a -f EP2_DML.sql
psql -U myusername -d mydatabase -a -f EP2_DML_CREATE_GROUP.sql
psql -U myusername -d mydatabase -a -f EP2_DML_UPDATE_GROUP.sql
psql -U myusername -d mydatabase -a -f EP2_DML_DELETE_GROUP.sql
psql -U myusername -d mydatabase -a -f EP2_DML_RETRIVAL_GROUP.sql

E para rodar o script sql para deletar a tabela usamos o comando abaixo.
psql -U myusername -d mydatabase -a -f EP2_DML_CLEAN.sql

