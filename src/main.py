# Librerías
from flask import Flask, jsonify                    # Librería para crear la API, y devolver respuestas en formato JSON
from flask_cors import CORS                         # Política de CORS, para permitir acceso ajenos
from JGVutils import SQLiteConnection               # Librería para realizar conexiones con una base de datos SQLite

# Configuración del proyecto
application = Flask(__name__)                           # Creación de la aplicación
cors = CORS(application)                                # Definición de la política de CORS
application.config["CORS_HEADERS"] = "Content-Type"     # Configuración de las CORS
conexion = SQLiteConnection("FootballAPI.db")           # Conexión a la base de datos

# Páginas
@application.route("/")
def indice_contenido():
    return "imprimir páginas disponibles"



@application.route("/equipos")
def obtener_equipos():
    equipos = conexion.execute_query("SELECT * FROM equipos")
    return equipos



@application.route("/equipos/<id>")
def obtener_equipo(id):
    equipo = conexion.execute_query("SELECT * FROM equipos WHERE id = ?", [id])
    if len(equipo) == 0:
        return jsonify({"message": "Equipo no encontrado", "data": None})
    return jsonify({"message": "Equipo encontrado", "data":equipo[0]})


@application.route("/partidosGanadosEquipo/<equipo>")
def obtener_partidos_ganados_de_equipo(equipo):
    partidos_ganados = conexion.execute_query(
        "SELECT COUNT(DISTINCT id) AS partidos_ganados FROM partidos WHERE (equipo1 = ? AND golesEquipo1 > golesEquipo2) OR (equipo2 = ? AND golesEquipo2 > golesEquipo1);",
        [equipo, equipo]
    )
    return partidos_ganados[0]