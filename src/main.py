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
CORS(application)

# Configuración del proyecto
application = Flask(__name__)                           # Creación de la aplicación
cors = CORS(application)                                # Definición de la política de CORS
application.config["CORS_HEADERS"] = "Content-Type"     # Configuración de las CORS
application.config["JSON_AS_ASCII"] = False             # Los resultados se mostrarán en UTF8 o parecidos, evitando ASCII
conexion = SQLiteConnection("FootballAPI.db")           # Conexión a la base de datos

# ======================
# RUTAS WEB (Páginas para los usuarios)
# ======================

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
    print("Consultando equipos...")
    equipos = conexion.execute_query("SELECT * FROM equipos")
    print("Resultados de la consulta:", equipos)

    if equipos is None:
        equipos = []

    return render_template(
        "equipos.html",
        equipos=equipos
    )

@application.route("/equipos/<id>")
def obtener_equipo(id):
    equipo = conexion.execute_query("SELECT * FROM equipos WHERE id = ?", [id])
    if len(equipo) == 0:
        return jsonify({"message": "Equipo no encontrado", "data": None})
    return jsonify({"message": "Equipo encontrado", "data":equipo[0]})



@application.route("/horario")
def obtener_horario_partidos():
    # Obtener todos los partidos ordenados por fecha
    partidos = conexion.execute_query("""
        SELECT p.id, e1.nombre AS equipo1, e2.nombre AS equipo2, 
               p.fecha, p.golesEquipo1, p.golesEquipo2
        FROM partidos p
        JOIN equipos e1 ON p.equipo1 = e1.id
        JOIN equipos e2 ON p.equipo2 = e2.id
        ORDER BY p.fecha ASC;
    """)
    
    if partidos is None:
        partidos = []

    return render_template("horario.html", partidos=partidos)



@application.route("/clasificacion")
def obtener_clasificacion():
    # Obtener clasificación desde la base de datos
    print("Ejecutando consulta de clasificación...")
    clasificacion = conexion.execute_query(consulta_clasificaciones)
    print("Datos obtenidos:", clasificacion)

    if clasificacion is None:
        clasificacion = []

    return render_template("clasificacion.html", clasificacion=clasificacion)

@application.route("/maximos-goleadores")
def obtener_maximos_goleadores():
    # Consulta para obtener los máximos goleadores
    consulta = """
        SELECT nombre, equipo, goles
        FROM jugadores
        ORDER BY goles DESC
        LIMIT 20;
    """
    jugadores_goleadores = conexion.execute_query(consulta)

    if jugadores_goleadores is None:
        jugadores_goleadores = []

    return render_template("goleadores.html", jugadores=jugadores_goleadores)

# ======================
# RUTAS DE LA API (devuelven JSON)
# ======================

@application.route("/api/equipos")
def api_equipos():
    equipos = conexion.execute_query("SELECT * FROM equipos")
    return jsonify(equipos)

@application.route("/api/jugadores")
def api_jugadores():
    jugadores = conexion.execute_query("SELECT * FROM jugadores")
    return jsonify(jugadores)

@application.route("/api/partidos")
def api_partidos():
    partidos = conexion.execute_query("""
        SELECT p.id, e1.nombre AS equipo1, e2.nombre AS equipo2, 
               p.fecha, p.golesEquipo1, p.golesEquipo2
        FROM partidos p
        JOIN equipos e1 ON p.equipo1 = e1.id
        JOIN equipos e2 ON p.equipo2 = e2.id
        ORDER BY p.fecha ASC;
    """)
    return jsonify(partidos)

@application.route("/api/clasificacion")
def api_clasificacion():
    clasificacion = conexion.execute_query(consulta_clasificaciones)
    return jsonify(clasificacion)

@application.route("/api/goleadores")
def api_goleadores():
    consulta = """
        SELECT nombre, equipo, goles
        FROM jugadores
        ORDER BY goles DESC
        LIMIT 20;
    """
    jugadores = conexion.execute_query(consulta)
    return jsonify(jugadores)

@application.route("/api/equipos/<id>")
def api_obtener_equipo(id):
    equipo = conexion.execute_query("SELECT * FROM equipos WHERE id = ?", [id])
    if len(equipo) == 0:
        return jsonify({"message": "Equipo no encontrado", "data": None})
    return jsonify({"data": equipo[0]})

# ======================
# Arrancamos el servidor
# ======================

if __name__ == "__main__":
    application.run(debug=True)