# Dependências de Flask

Python 3

# Criação do ambiente virtual
Usamos um ambiente virtual para controlar as dependências do projeto, tanto durante o desenvolvimento e na produção.
Qual a função desse ambiente virtual? Quanto estiver trabalhando com vários projetos, é provável que você precise trabalhar com diferentes versões de bibliotecas de Python, ou o próprio Python. Novas versões da biblioteca podem fazer com que um projeto perda a compatibilidade com um outro projeto.
Vamos transformar o projeto num ambiente virtual:
cd myproject #acessar a página
python3 -m venv venv #criar um ambiente virtual
Antes de começar a trabalhar no projeto, ativamos o ambiente:
venv/bin/activate #ativando o ambiente virtual

# Como instalar o Flask
Fazemos a instalação do Flask:
pip3 install Flask #instala o flask

# Executando código
python3 app.py
ou
FLASK_APP=app.py flask run


