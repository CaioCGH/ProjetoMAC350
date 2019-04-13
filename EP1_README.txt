Bruna Meneguzzi                         9327136
Caio Calisto Gaede Hirakawa             7590899
Eduardo Freire de Carvalho Lima        ????????
Jiang Zhi                               9778706
Matheus Santos                         10297672


Para rodar o script sql para criar a tabela usamos o comando abaixo, onde myusername deve ser trocado pelo seu usuário e mydatabasename deve ser trocado pelo seu database no psql.
psql -U myusername -d mydatabasename -a -f EP1_NUSP1_DDL.sql

E para rodar o script sql para deletar a tabela usamos o comando abaixo.
psql -U myusername -d mydatabasename -a -f EP1_NUSP1_DDL_CLEAN.sql