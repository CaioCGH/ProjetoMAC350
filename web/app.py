from flask import Flask, render_template, request
from models import db
from models import User, Aluno

app = Flask(__name__)
app.config['SECRET_KEY'] = 'ZXVzb3V1bWNhcmFtdWl0b2J1cnJvCg=='

POSTGRES = {
    'user': 'jz',
    'pw': '',
    'db': 'yggdrasil_db',
    'host': 'localhost',
    'port': '5432',
}

'''Modo de debug'''
app.config['DEBUG'] = True

'''Começando SQLALCHEMY'''
if ('%(pw)s' % POSTGRES  == '') :
    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://localhost:%(port)s/%(db)s' % POSTGRES
else :
    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://%(user)s:\%(pw)s@%(host)s:%(port)s/%(db)s' % POSTGRES

print ('Connecting in SQLALCHEMY_DATABASE_URI '+'%s' % app.config['SQLALCHEMY_DATABASE_URI']);

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
db.init_app(app)


'''Rota principal'''
@app.route('/')
def main():
    return render_template('index.html', message="Hello World!")

'''Rota de signup'''
@app.route('/signup')
def signup():
    return render_template('signup.html')

'''Rota de login'''
@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/alunos')
def alunos():
    return render_template('alunos.html', alunos=Aluno.query.all())

@app.route('/professores')
def professores():
    return render_template('professores.html')

@app.route("/add")
def add_aluno():
    name=request.args.get('name')
    nusp=request.args.get('nusp')
    
    try:
        a = [name, nusp]
        aluno = Aluno(
            name=name,
            nusp=nusp
        )
        db.session.add(aluno)
        db.session.commit()
        return "Aluno adicionado. aluno id={}".format(aluno.id)
    except Exception as e:
	    return(str(e))







if __name__ == '__main__':
    app.run()

