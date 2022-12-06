from flask import Flask, request, render_template, redirect, flash, session
from flask_debugtoolbar import DebugToolbarExtension 
from flask_sqlalchemy import SQLAlchemy
# from models import db, connect_db, Pet
# def connect_db(app):
#     """Connect to database."""

#     db.app = app
#     db.init_app(app)

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql:///movies_db'
db = SQLAlchemy()
db.app = app
db.init_app(app)


app.config['SECRET_KEY'] = "chickenz"
app.config['DEBUG_TB_INTERCEPT_REDIRECTS'] = False 
debug = DebugToolbarExtension(app)


@app.route('/')
def home_page(): 
    """Shows home page""" 
    return render_template('home.html')




# app = Flask(__name__)
# db = SQLAlchemy()

# app.config['SQLALCHEMY_DATABASE_URI'] = "postgresql:///movies_db"




# app.config['SECRET_KEY'] = "chickenz"
# app.config['DEBUG_TB_INTERCEPT_REDIRECTS'] = False 
# debug = DebugToolbarExtension(app)

# RuntimeError: Working outside of application context.

# This typically means that you attempted to use functionality that needed
# the current application. To solve this, set up an application context
