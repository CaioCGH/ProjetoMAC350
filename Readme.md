# Dependências do projeto
Os plugins dependem da API
Python - linguagem escolhida para o projeto
Flask - criação do site
Psycopg2 - integração com o postgreSQL
SQLAlchemy - manipulação de SQL
Flask Script


# Codigo para rodar
createdb yggdrasil-db
psql -U jz -d yggdrasil-db

pip install flask_script
pip install flask_migrate
pip install psycopg2-binary

python manage.py db init
python manage.py db migrate
python manage.py db upgrade

python app.py

Para adicionar alunos use esse link
http://127.0.0.1:5000/add?name=joao&nusp=100000

Para visualizar os alunos serem adicionados use esse link, era para ser materias mais tudo bem
http://127.0.0.1:5000/alunos


## Criação do ambiente virtual
Usamos um ambiente virtual para controlar as dependências do projeto, tanto durante o desenvolvimento e na produção.
Qual a função do ambiente virtual? Quanto estiver trabalhando com vários projetos, é provável que você precise trabalhar com diferentes versões de bibliotecas de Python, ou o próprio Python. Novas versões da biblioteca podem fazer com que um projeto perda a compatibilidade com um outro projeto.
Vamos transformar o projeto num ambiente virtual:
cd myproject #acessar a página
python -m venv venv #criar um ambiente virtual
Antes de começar a trabalhar no projeto, ativamos o ambiente:
venv/bin/activate #ativando o ambiente virtual

## Instalação das bibliotecas
Fazemos a instalação do Flask:
pip install Flask #instala o flask

# Execução

## Executando o site
python app.py
ou
FLASK_APP=app.py flask run

# Utilizando PostgreSQL
Nesse projeto usaremos um servidor de SQL como o PostgreSQL.
As duas bibliotecas de Python que usamos é o Psycopg2 e o SQLAlchemy
Psycopg2 (2.6.1) - um adaptador de python para postgreSQL.
Instalando em Ubuntu
sudo apt-get install psycopg2 libpq-dev python-dev
pip install flask-sqlalchemy psycopg2
Instalando em OS X
https://stackoverflow.com/questions/22313407/clang-error-unknown-argument-mno-fused-madd-python-package-installation-fa