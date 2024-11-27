from dotenv import load_dotenv 
import os

load_dotenv()

class secrets:
    # DATABASE
    MYSQL_USER = os.getenv("MYSQL_USER")
    MYSQL_HOST = os.getenv("MYSQL_HOST")
    MYSQL_PORT = os.getenv("MYSQL_PORT")
    MYSQL_PASSWORD = os.getenv("MYSQL_PASS")

    # IMAGE STORAGE API
    CLOUDINARY=os.getenv("CLOUDINARY")
