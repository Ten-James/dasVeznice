import json
from services import vezniceService

def all():
    return json.dumps(vezniceService.getAll())

def byId(id):
    return json.dumps(vezniceService.getById(id))