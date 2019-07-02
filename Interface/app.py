from flask import Flask
from models import db

from flask import render_template

app = Flask(__name__) 

POSTGRES = {
    'user': 'postgres',
    'pw': 'password',
    'db': 'my_database',
    'host': 'localhost',
    'port': '5432',
}

'''Sempre que muda o código da página, ele atualiza o site automáticamente.'''
app.config['DEBUG'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://%(user)s:\%(pw)s@%(host)s:%(port)s/%(db)s' % POSTGRES
db.init_app(app)

@app.route('/')
def main():
    return render_template('index.html', message="Hello World!")

@app.route('/api')
def get_json():
    return 'BLA'

if __name__ = '__main__':
    app.run()

