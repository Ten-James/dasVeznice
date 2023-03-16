import json
from services import vezenService

def all():
    return json.dumps(vezenService.getAll())

def byId(id):
    return json.dumps(vezenService.getById(id))