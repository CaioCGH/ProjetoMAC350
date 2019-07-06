from flask import Flask
from models import db
import psycopg2


from flask import Flask, flash, redirect, render_template, request, session, abort
import os

app = Flask(__name__)
app.secret_key = 'super secret key'
connection = psycopg2.connect(user = "postgres",
                                    password = "123456",
                                    host = "127.0.0.1",
                                    port = "5432",
                                    database = "postgres")

'''Sempre que muda o código da página, ele atualiza o site automáticamente.'''
app.config['DEBUG'] = True
db.init_app(app)

@app.route('/')
def home():
    return render_template('index.html', message="Hello World!")


@app.route('/login', methods=['POST'])
def do_login():
    cursor = connection.cursor()
    f_email = request.form['username']
    query = 'select * from get_user_by_email(\'{}\');'.format(f_email)
    cursor.execute(query)
    record = cursor.fetchone()
    print(record)
    if record != None and record[2] ==  request.form['password']:
        session['logged_in'] = True
        session['user_email'] = record[1]
        query = 'select * from get_pessoa_by_user_id(\'{}\');'.format(record[0])
        cursor.execute(query)
        record = cursor.fetchone()
        session['pessoa_id'] = record[0]
        session['nusp'] = record[1]
        session['name'] = record[2]
        return painel_do_aluno()
    else:
        flash('Senha ou usuário incorretos!')
        return render_template('index.html', message="Bem vindo!")


@app.route("/logout")
def logout():
    session['logged_in'] = False
    return home()

@app.route('/painel_do_aluno')
def painel_do_aluno():
    cursor = connection.cursor()
    query = 'select * from get_disciplinas_by_pessoa_id(\'{}\');'.format(session['pessoa_id'])
    cursor.execute(query)
    a = cursor.fetchall()
    return render_template('painel_do_aluno.html', disciplinas_cursadas=a)

@app.route('/signup')
def signup():
    return render_template('signup.html')

@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/alunos')
def alunos():
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM pessoa;")
    record = cursor.fetchall()
    return render_template('alunos.html', alunos=record)

if __name__ == '__main__':
    app.run()
