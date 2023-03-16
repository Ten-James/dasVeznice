import mysql.connector

mydb = mysql.connector.connect(
  host="db",
  user="root",
  database='db',
  password="heslo"
)

print(mydb)
