from flask import Flask
from models import db
import psycopg2


from flask import Flask, flash, redirect, render_template, request, session, abort
import os

app = Flask(__name__)
app.secret_key = 'super secret key'

user_tmp = "caio"
password_tmp = "0"

'''Faz a conexão'''
def get_connection(name) :
    return psycopg2.connect(   user = user_tmp,
                           password = password_tmp,
                            host = "127.0.0.1",
                            port = "5432",
                            database = name)

def get_execute(name, query):
    conn = get_connection(name)
    cursor = conn.cursor()
    cursor.execute(query)
    conn.commit()
    cursor.close()

def get_query_one(name, query):
    conn = get_connection(name)
    cursor = conn.cursor()
    cursor.execute(query)    
    result = cursor.fetchone()
    conn.commit()
    cursor.close()
    return result
''' Faz a query em relação a todos no banco de dados'''
def get_query_all(name, query):
    conn = get_connection(name)
    cursor = conn.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    conn.commit()
    cursor.close()
    return result


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
    f_email = request.form['email']
    query = 'select user_id, user_email, user_password from get_user_by_email(\'{}\');'.format(f_email)
    record = get_query_one("acesso", query)
    print(record)
    if record != None and record[2] ==  request.form['senha']:
        session['logged_in'] = True
        session['user_email'] = record[1]
        print(record[0])
        query = 'select id, NUSP, Nome from get_pessoa_by_user_id(\'{}\');'.format(record[0])
        record = get_query_one("acesso-pessoa", query)

        session['pessoa_id'] = record[0]
        session['nusp'] = record[1]
        session['name'] = record[2]
        return home()
    else:
        flash('Senha ou usuário incorretos!')
        return render_template('index.html', message="Bem vindo!")


@app.route("/logout")
def logout():
    session['logged_in'] = False
    return home()

@app.route('/show_disciplina/<disc_id>')
def show_disciplina(disc_id):
    disciplina_id   = disc_id
    query = 'select * from disciplina where dis_id = {}'.format(disciplina_id)
    disciplina = get_query_one('curriculo', query)

    return render_template('show_disciplina.html', disciplina=disciplina)


@app.route('/painel_do_aluno')
def painel_do_aluno():
    query = 'select * from get_disciplinas_cursa_by_pessoa_id({});'.format(session['pessoa_id'])
    dc = get_query_all('pessoa-curriculo', query)

    query = 'select * from get_disciplinas_planejadas_by_pessoa_id(\'{}\');'.format(session['pessoa_id'])
    disc_planejadas = get_query_all('pessoa-curriculo', query)

    query = 'select * from disciplina'
    todas_disc = get_query_all('curriculo', query)

    query = 'select * from get_disciplinas_planejaveis_by_pessoa_id({});'.format(session['pessoa_id'])
    disc_planejaveis = get_query_all('pessoa-curriculo', query)

    query = 'select * from trilha'
    tr = get_query_all('curriculo', query)

    return render_template('painel_do_aluno.html', disciplinas_cursadas=dc, trilhas=tr, disc_planejadas=disc_planejadas, disc_planejaveis=disc_planejaveis)

@app.route('/painel_do_professor')
def painel_do_professor():
    query = 'select * from get_disciplinas_oferecimento_by_professor_id({});'.format(session['pessoa_id'])
    disc_oferecidas = get_query_all('pessoa-curriculo', query)

    query = 'select * from disciplina'
    todas_disciplinas = get_query_all('curriculo', query)

    return render_template('painel_do_professor.html', disciplinas_oferecidas=disc_oferecidas, disciplinas=todas_disciplinas)

@app.route('/painel_do_administrador')
def painel_do_administrador():

    query = 'select * from disciplina'
    todas_disciplinas = get_query_all('curriculo', query)
    query = 'select * from trilha'
    todas_trilhas = get_query_all('curriculo', query)
    query = 'select * from modulo'
    todos_modulos = get_query_all('curriculo', query)

    return render_template('painel_do_administrador.html', disciplinas=todas_disciplinas, trilhas=todas_trilhas, modulos=todos_modulos)

@app.route('/create_disciplina')
def create_disciplina():
    return render_template('create_disciplina.html')

@app.route('/update_disciplina', methods=['POST'])
def update_disciplina():
    disciplina_id = request.form.get('disciplina_a_atualizar')
    query = 'select * from disciplina where dis_id = {}'.format(disciplina_id)
    disciplina = get_query_one('curriculo', query)
    return render_template('update_disciplina.html', disciplina=disciplina)

@app.route('/do_update_disciplina', methods=['POST'])
def do_update_disciplina():
    disciplina_id   = request.form.get('disciplina_a_atualizar')
    codigo          = request.form.get('codigo')
    nome            = request.form.get('nome')
    credito_aula    = request.form.get('credito_aula')
    credito_trabalho= request.form.get('credito_trabalho')
    periodo_ideal   = request.form.get('periodo_ideal')
    ementa          = request.form.get('ementa')
    descricao       = request.form.get('descricao')

    query = 'select update_disciplina({}, \'{}\',\'{}\', {}, {}, {}, \'{}\', \'{}\');'.format(disciplina_id, codigo, nome, credito_aula, credito_trabalho, periodo_ideal, ementa, descricao)
    get_execute('curriculo', query)
    return painel_do_administrador()

    return render_template('update_disciplina.html', disciplina=disciplina)

@app.route('/do_create_disciplina', methods=['POST'])
def do_create_disciplina():
    codigo          = request.form.get('codigo')
    nome            = request.form.get('nome')
    credito_aula    = request.form.get('credito_aula')
    credito_trabalho= request.form.get('credito_trabalho')
    periodo_ideal   = request.form.get('periodo_ideal')
    ementa          = request.form.get('ementa')
    descricao       = request.form.get('descricao')

    query = 'select insert_disciplina(\'{}\',\'{}\', {}, {}, {}, \'{}\', \'{}\');'.format(codigo, nome, credito_aula, credito_trabalho, periodo_ideal, ementa, descricao)
    get_execute('curriculo', query)
    return painel_do_administrador()


@app.route('/delete_planeja', methods=['POST'])
def delete_planeja():
    target = request.form.get('planeja_a_deletar')
    query = 'select * from delete_planeja({})'.format(target)
    get_query_all('pessoa-curriculo', query)

    return painel_do_aluno()

@app.route('/delete_oferecimento', methods=['POST'])
def delete_oferecimento():
    target = request.form.get('oferecimento_a_deletar')
    query = 'select * from delete_oferecimento({})'.format(target)
    get_execute('pessoa-curriculo', query)

    return painel_do_professor()

@app.route('/delete_disciplina', methods=['POST'])
def delete_disciplina():
    target = request.form.get('disciplina_a_deletar')
    query = 'select * from delete_disciplina({})'.format(target)
    get_execute('curriculo', query)

    return painel_do_administrador()

@app.route('/create_planeja', methods=['POST'])
def create_planeja():
    disciplina = request.form.get('disciplina_a_planejar')
    dataInicio = request.form.get('dataInicio')
    query = 'select insert_planeja({}, {},  \'{}\');'.format(session['pessoa_id'], disciplina, dataInicio)
    get_query_all('pessoa-curriculo', query)

    return painel_do_aluno()

@app.route('/create_oferecimento', methods=['POST'])
def create_oferecimento():
    disciplina = request.form.get('disciplina_a_oferecer')
    dataInicio = request.form.get('dataInicio')
    nvagas = request.form.get('nvagas')
    horario = request.form.get('horario')
    query = 'select insert_oferecimento({}, {},  \'{}\', {}, \'{}\');'.format(session['pessoa_id'], disciplina, dataInicio, nvagas, horario)
    get_query_all('pessoa-curriculo', query)

    return painel_do_professor()



@app.route('/signup', methods=['POST'])
def do_signup():
    
    f_nome = request.form['nome']
    f_sobrenome = request.form['sobrenome']
    f_nusp = request.form['nusp']
    f_email = request.form['email']
    f_senha = request.form['senha']
    query = 'select user_email from get_user_by_email(\'{}\');'.format(f_email)
    record = get_query_one('acesso', query)
    print(record)
    if record == None:
        query = 'select id from insert_users(\'{}\',\'{}\');'.format(f_email, f_senha)
        record = get_query_one('acesso', query)
        print(record)

        query = 'select id from insert_pessoa(\'{}\',\'{}\',\'{}\',\'{}\');'.format(f_email, f_nusp, f_nome, f_sobrenome)
        print(query)
        record2 = get_query_one('pessoa', query)
        print(record2)

        query = 'select * from insert_rel_pe_us(\'{}\',\'{}\');'.format(record2[0], record[0])
        record = get_query_one('acesso-pessoa', query)
    else:    
        flash('e-mail ja existe!')

    return render_template('index.html')

@app.route('/signup')
def signup():
    return render_template('signup.html')

@app.route('/alunos')
def alunos():
    query = "SELECT pe_Nome, pe_Sobrenome, pe_NUSP FROM pessoa;"
    record = get_query_all('pessoa', query)
    return render_template('alunos.html', alunos=record)

if __name__ == '__main__':
    app.run()
