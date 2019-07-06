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

@app.route('/login')
def login():
    return render_template('login.html')

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
    else:
        flash('wrong password!')
    return render_template('index.html', message="Bem vindo!")


@app.route("/logout")
def logout():
    session['logged_in'] = False
    return home()

@app.route('/signup', methods=['POST'])
def do_signup():
    cursor = connection.cursor()
    f_email = request.form['username']
    f_senha = request.form['password']
    query = 'select user_email from get_user_by_email(\'{}\');'.format(f_email)
    cursor.execute(query)
    record = cursor.fetchone()
    if record == f_email:
        flash('e-mail ja existe!')
    else:    
        query = 'select * from insert_users(\'{}\',\'{}\');'.format(f_email, f_senha)
        cursor.execute(query)
        record = cursor.fetchone()
    return render_template('index.html')

@app.route('/signup')
def signup():
    return render_template('signup.html')

@app.route('/alunos')
def alunos():
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM pessoa;")

    
    record = cursor.fetchall()
    return render_template('alunos.html', alunos=record)



if __name__ == '__main__':
    app.run()
