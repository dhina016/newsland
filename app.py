import os
from datetime import datetime
from flask import Flask, request, render_template, flash, redirect, url_for, session, logging

from flask_mysqldb import MySQL
from validate import Register
from werkzeug.utils import secure_filename
from passlib.hash import sha256_crypt


UPLOAD_FOLDER = 'static/img/news'
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}

app = Flask(__name__)

app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_DB'] = 'flask'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

mysql = MySQL(app)


@app.route('/')
@app.route('/home')
def home():
    return render_template('index.html')


@app.route('/news')
def news():
    date = (datetime.now()).strftime("%Y-%m-%d")
    cur = mysql.connection.cursor()
    cur.execute("SELECT p.id, p.c_id, p.u_id, p.title,p.description, p.name, p.img, p.date, p.pin, c.name as catg FROM post as p Inner Join category as c on p.c_id = c.id  WHERE p.date = %s",[date])
    new = cur.fetchall()
    cur.execute("SELECT p.id, p.c_id, p.u_id, p.title,p.description, p.name, p.img, p.date, p.pin, c.name as catg FROM post as p Inner Join category as c on p.c_id = c.id  WHERE p.date != %s",[date])
    old = cur.fetchall()
    cur.execute("SELECT p.id, p.c_id, p.u_id, p.title,p.description, p.name, p.img, p.date, p.pin, c.name as catg FROM post as p Inner Join category as c on p.c_id = c.id  WHERE p.pin = 1")
    choice = cur.fetchall()
    cur.close()
    return render_template('news.html', new=new,old=old,choice=choice)

@app.route('/contact')
def contact():
    return render_template('contact.html')

@app.route('/register', methods=['GET', 'POST'])
def register():
    form = Register(request.form)
    if request.method == 'POST' and form.validate():
        username = form.username.data
        email = form.email.data
        password = sha256_crypt.encrypt(str(form.password.data))
        cur = mysql.connection.cursor()
        cur.execute('''Insert into users (username, email, password) VALUES (%s, %s, %s)''', (username, email, password))
        mysql.connection.commit()

        cur.close()

        flash('Thanks for registering', 'success')
        return redirect(url_for('login'))

    return render_template('register.html', form=form)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        user_pass = request.form['password']
        cur = mysql.connection.cursor()
        result = cur.execute("SELECT * FROM users WHERE username = %s",[username])

        if result > 0:
            data = cur.fetchone()
            password = data['password']
            id_num = data['id']
            if sha256_crypt.verify(user_pass, password):
                session['logged_in'] = True
                session['admin'] = False
                session['username'] = username
                session['id'] = id_num
                flash('Logged In Successfully!!!', 'success')
                return redirect(url_for('home'))
            else:
                flash('Invalid Login', 'danger')
                return redirect(url_for('login'))
        else:
            flash('User not found', 'danger')
            return redirect(url_for('login'))
            
    return render_template('login.html')

@app.route('/admin', methods=['GET', 'POST'])
def adminlogin():
    if request.method == 'POST':
        username = request.form['username']
        user_pass = request.form['password']

        cur = mysql.connection.cursor()
        result = cur.execute("SELECT * FROM admin WHERE username = %s",[username])

        if result > 0:
            data = cur.fetchone()
            password = data['password']
            id_num = data['id']
            if sha256_crypt.verify(user_pass, password):
                session['logged_in'] = True
                session['admin'] = True
                session['username'] = username
                session['id'] = id_num
                flash('Logged In Successfully!!!', 'success')
                return redirect(url_for('home'))
            else:
                error = 'Invalid Login'
                return redirect(url_for('login', error=error))
        else:
            error = 'User Not Found'
            return redirect(url_for('login', error=error))
            
    return render_template('login.html')

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

@app.route('/addpost', methods=['GET', 'POST'])
def addpost():
    cur = mysql.connection.cursor()
    if request.method == 'POST':
        if 'file' not in request.files:
            filename = 'default.jpg'
        file = request.files['file']
        if file.filename == '':
            filename = 'default.jpg'
        if file and allowed_file(file.filename):
            filename = secure_filename(file.filename)
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        c_id = request.form['category']
        title = request.form['title']
        description = request.form['description']
        u_id = request.form['id']
        name = request.form['username']
        date = (datetime.now()).strftime("%Y-%m-%d")
        cur.execute('''Insert into post (c_id, title, description, u_id, name, date, img) VALUES (%s, %s, %s, %s, %s, %s, %s)''', (c_id, title, description, u_id, name, date, filename))
        mysql.connection.commit()
        cur.close()
        return redirect(url_for('news'))
    cur.execute("SELECT * FROM category")
    data = cur.fetchall()
    return render_template('addpost.html', result=data)

@app.route('/edit/<int:num>', methods=['GET', 'POST'])
def editpost(num):
    cur = mysql.connection.cursor()
    if request.method == 'POST':
        c_id = request.form['category']
        title = request.form['title']
        description = request.form['description']
        cur.execute('''Update post SET c_id = %s , title = %s , description = %s where id = %s''', (c_id, title, description, num))
        mysql.connection.commit()
        cur.close()
        flash('update successfully', 'success')
        return redirect(url_for('news'))
    cur.execute("SELECT * FROM category")
    data = cur.fetchall()
    cur.execute("SELECT * FROM post where id = %s",[num])
    detail = cur.fetchone()
    return render_template('editpost.html', result=data, detail=detail)

@app.route('/view/<where>/<condition>')
def view(where, condition):
    if where == 'category':
        where = 'c_id'
    cur = mysql.connection.cursor()
    cur.execute("SELECT p.id, p.u_id, p.title,p.description, p.name, p.img, p.date, c.name as catg FROM post as p Inner Join category as c on p.c_id = c.id  WHERE p.{} = %s".format(where),[condition])
    new = cur.fetchall()
    return render_template('news.html', new=new)


@app.route('/search', methods=['GET', 'POST'])
def search():
    word = request.form['search']
    cur = mysql.connection.cursor()
    cur.execute("SELECT p.id, p.u_id, p.title,p.description, p.name, p.img, p.date, c.name as catg FROM post as p Inner Join category as c on p.c_id = c.id  WHERE p.title Like '%{}%'".format(word))
    new = cur.fetchall()
    return render_template('news.html', new=new)

@app.route('/singlepost/<int:num>')
def singlepost(num):
    cur = mysql.connection.cursor()
    cur.execute("SELECT p.id, p.u_id, p.title,p.description, p.name, p.img, p.date, c.name as catg FROM post as p Inner Join category as c on p.c_id = c.id  WHERE p.id = %s",[num])
    new = cur.fetchone()
    return render_template('singlepost.html', detail=new)

@app.route('/logout')
def logout():
    session.clear()
    flash('Logged Out Successfully!!!', 'success')
    return redirect(url_for('login'))

@app.route('/delete', methods=['GET', 'POST'])
def delete():
    id = request.form['id']
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM post WHERE id = %s",[id])
    mysql.connection.commit()
    cur.close()
    flash('Deleted Successfully', 'success')
    return redirect(url_for('news'))

@app.route('/pin', methods=['GET', 'POST'])
def pin():
    id = request.form['id']
    cur = mysql.connection.cursor()
    cur.execute("UPDATE post SET pin = 1 WHERE id = %s",[id])
    mysql.connection.commit()
    cur.close()
    flash('pinned Successfully', 'success')
    return redirect(url_for('news'))

@app.route('/unpin', methods=['GET', 'POST'])
def unpin():
    id = request.form['id']
    cur = mysql.connection.cursor()
    cur.execute("UPDATE post SET pin = 0 WHERE id = %s",[id])
    mysql.connection.commit()
    cur.close()
    flash('unpinned Successfully', 'success')
    return redirect(url_for('news'))


if __name__ == "__main__":
    app.secret_key = 'Flask123!'
    app.run(debug = True)