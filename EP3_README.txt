Bruna Meneguzzi                         9327136
Caio Calisto Gaede Hirakawa             7590899
Eduardo Freire de Carvalho Lima        10262627
Jiang Zhi                               9778706
Matheus Santos                         10297672

Com o Flask, uma biblioteca de Python fizemos uma interface gráfica para o banco de dados.

# Dependências do projeto
Algumas dependências do projeto são:
Flask 
Bootstrap 
Psycopg2 
SQLAlchemy 
Vamos descrever nas sessões seguintes, para definir as dependências do projeto.

## Criação do ambiente virtual
Usamos um ambiente virtual para controlar as dependências do projeto, tanto durante o desenvolvimento e na produção.
Qual a função do ambiente virtual? Quanto estiver trabalhando com vários projetos, é provável que você precise trabalhar com diferentes versões de bibliotecas de Python, ou o próprio Python. Novas versões da biblioteca podem fazer com que um projeto perda a compatibilidade com um outro projeto.
Vamos transformar o projeto num ambiente virtual, com os seguintes comandos na pasta da API:
python -m venv venv
E para ativar o ambiente, quando rodar o Flask:
venv/bin/activate

## Instalação das bibliotecas
Agora iremos instalar as dependências do projeto
pip install Flask 
pip install flask_script
pip install flask_migrate
pip install psycopg2-binary
Instalando em Ubuntu
sudo apt-get install psycopg2 libpq-dev python-dev
pip install flask-sqlalchemy psycopg2


## Utilizando PostgreSQL
Nesse projeto usaremos um servidor de SQL como o PostgreSQL.
As duas bibliotecas de Python que usamos é o Psycopg2 e o Flask.
Psycopg2 (2.6.1) - um adaptador de python para postgreSQL.

No script resetall podemos trocar o valor do a para o usuário e rodar com bash resetall.
Nesse script iremos remover a database se existir e criamos a database novamente, depois rodamos os scripts de sql para os bancos de dados correspondentes, no script precisamos mudar o myusername deve ser trocado por seu usuário.

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


## Executando o Flask
python app.py
ou
FLASK_APP=app.py flask run