import pymysql
from app import app
from config import mysql
from flask import jsonify
from flask import flash, request
		
@app.route('/add-user', methods=['POST'])
def add_user():
	try:
		_json = request.json
		_user = _json['user']
		_password = _json['password']
		if _user and _password and request.method == 'POST':			
			sqlQuery = "INSERT INTO users(user, password) VALUES(%s, %s,)"
			bindData = (_user, _password)
			conn = mysql.connect()
			cursor = conn.cursor()
			cursor.execute(sqlQuery, bindData)
			conn.commit()
			respone = jsonify('User added successfully!')
			respone.status_code = 200
			return respone
		else:
			return not_found()
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()
		
@app.route('/user', methods=['GET'])
def get_all_user():
	try:
		conn = mysql.connect()
		cursor = conn.cursor(pymysql.cursors.DictCursor)
		cursor.execute("SELECT id name FROM users")
		empRows = cursor.fetchall()
		respone = jsonify(empRows)
		respone.status_code = 200
		return respone
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()
		
@app.route('/user/<int:id>', methods=['GET'])
def get_user(id):
	try:
		conn = mysql.connect()
		cursor = conn.cursor(pymysql.cursors.DictCursor)
		cursor.execute("SELECT id name FROM users WHERE id =%s", id)
		empRow = cursor.fetchone()
		respone = jsonify(empRow)
		respone.status_code = 200
		return respone
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()

@app.route('/bookmark-flag/<user_id>/<question_text_id>', methods=['GET'])
def get_bookmark_flag(user_id, question_text_id):
	try:
		conn = mysql.connect()
		cursor = conn.cursor(pymysql.cursors.DictCursor)
		cursor.execute("SELECT * FROM users WHERE user_id =%s question_text_id =%s", user_id, question_text_id)
		empRow = cursor.fetchone()
		respone = jsonify(empRow)
		respone.status_code = 200
		return respone
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()


@app.route('/set-bookmark', methods=['PUT'])
def set_bookmark():
	try:
		_json = request.json
		_user_id = _json['user_id']
		_question_text_id = _json['question_text_id']
		_bookmarked = _json['bookmarked']
		if _user_id and _question_text_id and _bookmarked and request.method == 'PUT':			
			sqlQuery = "UPDATE question_setting SET bookmarked=%s WHERE _user_id=%s, _question_text_id=%s"
			bindData = (_user_id, _question_text_id, _bookmarked,)
			conn = mysql.connect()
			cursor = conn.cursor()
			cursor.execute(sqlQuery, bindData)
			conn.commit()
			respone = jsonify('Bookmark updated successfully!')
			respone.status_code = 200
			return respone
		else:
			return not_found()	
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()

@app.route('/comfort-level-flag/<_user_id>/<_question_text_id>', methods=['GET'])
def get_comfort_level_flag(_user_id, _question_text_id):
	try:
		conn = mysql.connect()
		cursor = conn.cursor(pymysql.cursors.DictCursor)
		cursor.execute("SELECT bookmark_flag FROM question_setting WHERE _user_id =%s _question_text_id =%s", _user_id, _question_text_id)
		empRow = cursor.fetchone()
		respone = jsonify(empRow)
		respone.status_code = 200
		return respone
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()


@app.route('/set-comfort-level-flag', methods=['PUT'])
def set_comfort_level():
	try:
		_json = request.json
		_user_id = _json['user_id']
		_question_text_id = _json['question_text_id']
		_comfort_level = _json['comfort_level']
		if _user_id and _question_text_id and _comfort_level and request.method == 'PUT':			
			sqlQuery = "UPDATE question_setting SET comfort_level=%s WHERE _user_id=%s, _question_text_id=%s"
			bindData = (_user_id, _question_text_id, _comfort_level,)
			conn = mysql.connect()
			cursor = conn.cursor()
			cursor.execute(sqlQuery, bindData)
			conn.commit()
			respone = jsonify('Bookmark updated successfully!')
			respone.status_code = 200
			return respone
		else:
			return not_found()	
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()
		
@app.route('/delete-user/<int:id>', methods=['DELETE'])
def delete_emp(id):
	try:
		conn = mysql.connect()
		cursor = conn.cursor()
		cursor.execute("DELETE FROM user WHERE id =%s", (id,))
		conn.commit()
		respone = jsonify('User deleted successfully!')
		respone.status_code = 200
		return respone
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()
		
@app.errorhandler(404)
def not_found(error=None):
    message = {
        'status': 404,
        'message': 'Record not found: ' + request.url,
    }
    respone = jsonify(message)
    respone.status_code = 404
    return respone
		
if __name__ == "__main__":
    app.run()