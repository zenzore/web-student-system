from flask import Flask
from config import secrets 
from .students import student

def create_app():
    app = Flask(__name__)

    app.config.from_mapping(
        MYSQL_HOST=secrets.MYSQL_HOST,
        MYSQL_PASSWORD=secrets.MYSQL_PASSWORD,
        MYSQL_PORT=secrets.MYSQL_PORT,
        MYSQL_USER=secrets.MYSQL_USER
    )

    app.register_blueprint(student)

    return app