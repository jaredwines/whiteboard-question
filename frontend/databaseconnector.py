import mysql.connector
import ConfigParser

# class DatabaseConnector:
    
    # def __init__(self):
    #     config = ConfigParser.RawConfigParser()
    #     config.read('/Users/jared/Repository/whiteboard-question/config.ini')
    #     self.user = config.get('DatabaseSection', 'database.user')
    #     self.host = config.get('DatabaseSection', 'database.host')
    #     self.password = config.get('DatabaseSection', 'database.password')
    #     self.dbname = config.get('DatabaseSection', 'database.dbname')
    
def showQuestions():
    db = mysql.connector.connect(user='jared', password='Powell123', host='localhost', database='whiteboard_questions')
    cursor = db.cursor()
    query = ("SELECT * FROM questions_text")

    cursor.execute(query)
    for row in cursor:
        print(row)
 
    cursor.close()
    db.close()
    