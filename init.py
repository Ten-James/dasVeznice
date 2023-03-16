from flask import Flask, request
import json
import routes.vezen.get
import routes.veznice.get
from db import mydb

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>HeAllo, World! ahoj</p>"

@app.route("/vezen")
def vezen():
    return routes.vezen.get.all()

@app.route("/vezen/<id>")
def vezenById(id):
    return routes.vezen.get.byId(id)

@app.post('/vezen/<id>')
def updateVezen(id):
    print(request.form)
    return ''

@app.route("/veznice")
def veznice():
    return routes.veznice.get.all()

@app.route("/veznice/<id>")
def vezniceById(id):
    return routes.veznice.get.byId(id)

@app.post('/veznice/<id>')
def updateVeznice(id):
    print(request.form)
    return ''
