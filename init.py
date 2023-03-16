from flask import Flask, request
import json
from db import mydb

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>HeAllo, World! ahoj</p>"

@app.route("/vezen")
def vezen():
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM Recidivista")
    result = cursor.fetchall()
    return json.dumps(result);

@app.route("/vezen/<id>")
def vezenById(id):
    return '';

@app.post('/vezen/<id>')
def updateVezen(id):
    print(request.form)
    return '';

@app.route("/veznice")
def veznice():
    return '';

@app.route("/veznice/<id>")
def vezniceById(id):
    return '';

@app.post('/veznice/<id>')
def updateVeznice(id):
    print(request.form)
    return '';
