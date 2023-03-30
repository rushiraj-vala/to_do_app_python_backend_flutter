from flask import Blueprint
from flask_restful import Resource

class user(Resource):
    def get(self):
        return {"Messaeg":""}
    # def post(self):
    #     return {"Messaeg":""}