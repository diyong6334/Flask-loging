
from MySQLdb.cursors import Cursor
from flask import Flask, render_template, request, redirect, sessions,  url_for, flash, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re

################################################################### create the object of Flask ###########################################
app  = Flask(__name__)
app.secret_key = "flash message"

########################################################### connecting to database ########################################################
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASWORD'] = ''
app.config['MYSQL_DB'] = 'crudapplication'

mysql = MySQL(app)
 
######################################### creating our routes ###############################################################
@app.route('/')
def index():
   
    return render_template('/index.html', )

#******************************collecting user information ***************************************************************************
@app.route('/insert', methods =['POST'])
def insert():
    if request.method == "POST":
        sname = request.form['sname']
        fname = request.form['fname']
        lname = request.form['lname']
        email = request.form['email']
        phone = request.form['phone']
        password = request.form['password']

        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO users(sname, fname, lname, email, phone, password) VALUES(%s, %s, %s, %s, %s, %s)", (sname, fname, lname, email, phone, password))
        mysql.connection.commit()
        flash("User inserted Successfully")
        return redirect(url_for('login'))

################################################################## profile routes #################################################################
@app.route('/profile')
def profile():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM users")
    data = cur.fetchall()
    cur.close
    return render_template('/profile.html', users = data)

###################################################################### register ##############################################################
@app.route('/register')
def register():
    return render_template('/register.html')

###################################################################### news routes ##############################################################
@app.route('/login/', methods=['GET', 'POST'])
def login():
    # Output message if something goes wrong...
    msg = ''
    # Check if "username" and "password" POST requests exist (user submitted form)
    if request.method == 'POST' and 'email' in request.form and 'password' in request.form:
        # Create variables for easy access
        email = request.form['email']
        password = request.form['password']
        # Check if account exists using MySQL
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM users WHERE email = %s AND password = %s', (email, password))
        # Fetch one record and return result
        record = cursor.fetchone()
        # If account exists in accounts table in out database
        if record:
            # Create session data, we can access this data in other routes
            session['loggedin'] = True
            session['id'] = record['id']
            session['email'] = record['email']
            session['fname'] = record['fname']
            # Redirect to home page
            return redirect(url_for('profile'))
        else:
            # Account doesnt exist or username/password incorrect
            msg = 'Incorrect username/password!'
    # Show the login form with message (if any)
    return render_template('index.html', msg=msg)


 
########################################################################## run flask app ##############################################################
if __name__ == "__main__":
    app.run(debug=True)