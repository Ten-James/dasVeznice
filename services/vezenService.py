from db import mydb

def getAll():
    cursor = mydb.cursor(dictionary=True)
    cursor.execute("SELECT * FROM Recidivista")
    result = cursor.fetchall()
    cursor.close()
    return result

def getById(id :int):
    cursor = mydb.cursor(dictionary=True)
    cursor.execute("SELECT * FROM Recidivista WHERE idr = %s", (id,))
    result = cursor.fetchone()
    cursor.close()
    return result
