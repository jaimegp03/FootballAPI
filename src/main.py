# Librerías
from flask import Flask, jsonify, render_template                   # Librería para crear la API, y devolver respuestas en formato JSON
from flask_cors import CORS                                         # Política de CORS, para permitir acceso ajenos
from JGVutils import SQLiteConnection                               # Librería para realizar conexiones con una base de datos SQLite
from Consultas import consulta_clasificaciones, consulta_equipos_mas_goleadores
import os

# Configurar Flask para usar las carpetas 'templates' y 'static'
application = Flask(__name__, 
                   template_folder=os.path.join(os.getcwd(), 'src', 'templates'),
                   static_folder=os.path.join(os.getcwd(), 'src', 'static'))


# Configuración del proyecto
application = Flask(__name__)                           # Creación de la aplicación
cors = CORS(application)                                # Definición de la política de CORS
application.config["CORS_HEADERS"] = "Content-Type"     # Configuración de las CORS
application.config["JSON_AS_ASCII"] = False             # Los resultados se mostrarán en UTF8 o parecidos, evitando ASCII
conexion = SQLiteConnection("FootballAPI.db")           # Conexión a la base de datos


# Páginas
@application.route("/")
def indice_contenido():
    # Obtener todos los equipos
    equipos = conexion.execute_query("SELECT * FROM equipos")
    if equipos is None:
        equipos = []

    # Consultar número de jugadores por equipo
    jugadores_por_equipo = conexion.execute_query("""
        SELECT equipo, COUNT(DISTINCT id) AS 'Numero de jugadores' 
        FROM jugadores GROUP BY equipo;
    """)
    if jugadores_por_equipo is None:
        jugadores_por_equipo = []

    # Consultar clasificación
    clasificacion = conexion.execute_query(consulta_clasificaciones)
    if clasificacion is None:
        clasificacion = []

    # Consultar equipos más goleadores
    goleadores = conexion.execute_query(consulta_equipos_mas_goleadores)
    if goleadores is None:
        goleadores = []

    # 💡 Aquí empieza la parte que pediste: Imprimir valores para depurar
    print("\nDEBUG - Datos obtenidos:\n")
    print("Equipos:", equipos)
    print("Jugadores por equipo:", jugadores_por_equipo)
    print("Clasificación:", clasificacion)
    print("Goleadores:", goleadores)
    print("\n" + "-"*50 + "\n")

    # Renderizar la plantilla pasando todas las variables
    return render_template(
        "index.html",
        equipos=equipos,
        jugadores_por_equipo=jugadores_por_equipo,
        clasificacion=clasificacion,
        goleadores=goleadores
    )

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
def consulta_partidos_ganados(equipo):
    resultado = conexion.execute_query("""
        SELECT COUNT(DISTINCT id) 
        FROM partidos 
        WHERE (equipo1 = ? AND golesEquipo1 > golesEquipo2) 
           OR (equipo2 = ? AND golesEquipo2 > golesEquipo1);
    """, [equipo, equipo])
    return jsonify({
        "equipo": equipo,
        "partidos_ganados": resultado[0][0] if resultado and len(resultado) > 0 else 0
    })



@application.route("/clasificacion")
def obtener_clasificacion():
    clasificacion = conexion.execute_query(consulta_clasificaciones)
    return clasificacion

@application.route("/equiposmasgoleadores")
def obtener_goleadores():
    goleadores = conexion.execute_query(consulta_equipos_mas_goleadores)
    return goleadores