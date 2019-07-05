from flask_sqlalchemy import SQLAlchemy
import datetime

db = SQLAlchemy()

class User(db.Model):
    """Model for the users table"""
    __tablename__ = 'users'

    id = db.Column(db.Integer, primary_key = True)
    user = db.Column(db.String(100), unique=True)
    password  = db.Column(db.String(100))
    name = db.Column(db.String(100))

    def __init__(self, user, password, name):
        self.user = user
        self.password = password
        self.name = name

    def __repr__(self):
        return '<id {}>'.format(self.id)



class Aluno(db.Model):
    """Model for the alunos table"""
    __tablename__ = 'alunos'

    def __init__(self, *args):
        super().__init__(*args)

    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String(100))
    nusp = db.Column(db.String(10))

    def __init__(self, name, nusp):
        self.name = name
        self.nusp = nusp

    