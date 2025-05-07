# Librerías
from flask import Flask, request
from flask_cors import CORS
from JGVutils import SQLiteConnection

# Configuración del proyecto
application = Flask(__name__)
cors = CORS(application)
application.config["CORS_HEADERS"] = "Content-Type"

# Páginas
@application.route("/")
def indice_contenido():
    return "<button>Hola</button>"

@application.route("/suma")
def saludar():
    numero1 = 2
    numero2 = 3
    suma = numero1 + numero2
    return "Suma: "+ str(suma)