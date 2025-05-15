# Librerías
from flask import Flask, jsonify, render_template, request, redirect, url_for, session
from flask_cors import CORS
from JGVutils import SQLiteConnection
from Consultas import consulta_clasificaciones, consulta_equipos_mas_goleadores
import os

# Configurar Flask para usar las carpetas 'templates' y 'static'
application = Flask(__name__,
                    template_folder='templates',
                    static_folder='static')

CORS(application)
application.secret_key = "tu_clave_secreta_muy_segura"

# Conexión a la base de datos
conexion = SQLiteConnection("database/FootballAPI.db")

# ======================
# RUTAS WEB (Páginas para los usuarios)
# ======================

@application.route("/")
def indice_contenido():

    # Obtener todos los equipos
    equipos = conexion.execute_query("SELECT * FROM equipos")
    if equipos is None:
        equipos = []

    # Número de jugadores por equipo
    jugadores_por_equipo = conexion.execute_query("""
        SELECT equipo, COUNT(DISTINCT id) AS 'Numero de jugadores' 
        FROM jugadores GROUP BY equipo;
    """)
    if jugadores_por_equipo is None:
        jugadores_por_equipo = []

    # Clasificación
    clasificacion = conexion.execute_query(consulta_clasificaciones)
    if clasificacion is None:
        clasificacion = []

    # Equipos más goleadores
    goleadores = conexion.execute_query(consulta_equipos_mas_goleadores)
    if goleadores is None:
        goleadores = []

    # Verificar si es administrador
    mostrar_insertar = False
    if 'user' in session and session['user'].get('is_admin'):
        mostrar_insertar = True

    
    return render_template(
        "index.html",
        equipos=equipos,
        jugadores_por_equipo=jugadores_por_equipo,
        clasificacion=clasificacion,
        goleadores=goleadores,
        mostrar_insertar=mostrar_insertar
    )

@application.route("/equipos")
def obtener_equipos():
    print("[DEBUG] Ruta /equipos accedida")
    equipos = conexion.execute_query("SELECT * FROM equipos")
    print("Datos obtenidos:", equipos)

    if equipos is None:
        equipos = []

    return render_template("equipos.html", equipos=equipos)

@application.route("/equipos/<id>")
def obtener_equipo(id):
    equipo = conexion.execute_query("SELECT * FROM equipos WHERE id = ?", [id])
    if len(equipo) == 0:
        return jsonify({"message": "Equipo no encontrado", "data": None})
    return jsonify({"message": "Equipo encontrado", "data": equipo[0]})

@application.route("/horario")
def obtener_horario_partidos():
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
    clasificacion = conexion.execute_query(consulta_clasificaciones)
    if clasificacion is None:
        clasificacion = []
    return render_template("clasificacion.html", clasificacion=clasificacion)

@application.route("/maximos-goleadores")
def obtener_maximos_goleadores():
    consulta = """
        SELECT nombre, equipo, goles
        FROM jugadores
        ORDER BY goles DESC
        LIMIT 20;
    """
    jugadores = conexion.execute_query(consulta)
    if jugadores is None:
        jugadores = []
    return render_template("goleadores.html", jugadores=jugadores)

# ======================
# RUTAS DE AUTENTICACIÓN Y ADMIN
# ======================

@application.route("/login", methods=["GET", "POST"])
def login():
    mensaje = None

    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]

        user = conexion.execute_query(
            "SELECT * FROM usuarios WHERE username = ? AND password = ?",
            [username, password]
        )

        if user and len(user) > 0:
            session['user'] = {
                'id': user[0][0],
                'username': user[0][1],
                'is_admin': user[0][3]
            }
            return redirect(url_for("indice_contenido"))
        else:
            mensaje = "Usuario o contraseña incorrectos."

    return render_template("/login.html", mensaje=mensaje)

@application.route("/logout")
def logout():
    session.pop('user', None)
    return redirect(url_for("login"))

def is_admin():
    return session.get('user') and session['user'].get('is_admin') == 1

# ======================
# RUTAS PARA INSERTAR DATOS
# ======================

@application.route("/equipos/nuevo", methods=["GET", "POST"])
def nuevo_equipo():
    if not is_admin():
        return "<p>⚠️ Acceso denegado. Necesitas iniciar sesión como administrador.</p><a href='/login'>Volver a iniciar sesión</a>"
    
    if request.method == "POST":
        nombre = request.form["nombre"]
        creacion = request.form["creacion"]
        conexion.execute_query(
            "INSERT INTO equipos (nombre, creacion) VALUES (?, ?)",
            [nombre, creacion]
        )
        return redirect(url_for("obtener_equipos"))
    
    return render_template("nuevo_equipo.html")

@application.route("/jugadores/nuevo", methods=["GET", "POST"])
def nuevo_jugador():
    if not is_admin():
        return "<p>⚠️ Acceso denegado. Necesitas iniciar sesión como administrador.</p><a href='/login'>Volver a iniciar sesión</a>"
    
    if request.method == "POST":
        nombre = request.form["nombre"]
        edad = request.form["edad"]
        posicion = request.form["posicion"]
        numero = request.form["numero"]
        equipo = request.form["equipo"]
        conexion.execute_query(
            "INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES (?, ?, ?, ?, ?)",
            [nombre, edad, posicion, numero, equipo]
        )
        return redirect(url_for("obtener_equipos"))
    
    equipos = conexion.execute_query("SELECT id, nombre FROM equipos")
    return render_template("nuevo_jugador.html", equipos=equipos)

@application.route("/partidos/nuevo", methods=["GET", "POST"])
def nuevo_partido():
    if not is_admin():
        return "<p>⚠️ Acceso denegado. Necesitas iniciar sesión como administrador.</p><a href='/login'>Volver a iniciar sesión</a>"
    
    if request.method == "POST":
        equipo1 = request.form["equipo1"]
        equipo2 = request.form["equipo2"]
        fecha = request.form["fecha"]
        goles1 = request.form["golesEquipo1"]
        goles2 = request.form["golesEquipo2"]
        conexion.execute_query(
            "INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES (?, ?, ?, ?, ?)",
            [equipo1, equipo2, fecha, goles1, goles2]
        )
        return redirect(url_for("obtener_horario_partidos"))
    
    equipos = conexion.execute_query("SELECT id, nombre FROM equipos")
    return render_template("nuevo_partido.html", equipos=equipos)

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