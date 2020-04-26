from app import app
from flaskext.mysql import MySQL

mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'jared'
app.config['MYSQL_DATABASE_PASSWORD'] = 'Powell123'
app.config['MYSQL_DATABASE_DB'] = 'whiteboard-questions'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)