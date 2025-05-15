-- Tabla de usuarios
CREATE TABLE usuarios (
    username TEXT PRIMARY KEY,
    name TEXT,
    password TEXT,
    is_admin BOOLEAN DEFAULT 0
);

-- Inserta un usuario admin
INSERT INTO usuarios (username, name, password, is_admin) VALUES ('admin', 'Jaime', '123', 1);



CREATE TABLE equipos (
    id INTEGER PRIMARY KEY,     -- Identificador del equipo
    nombre TEXT,                -- Nombre del equipo
    creacion INTEGER            -- Año de creación
    origen TEXT
);

CREATE TABLE jugadores (
    id INTEGER PRIMARY KEY,     -- Identificador único del jugador
    nombre TEXT,                -- Nombre del jugador
    edad INTEGER,               -- Edad del jugador
    posicion TEXT,              -- Posición en el campo
    numero INTEGER,             -- Número en el dorsal
    equipo INTEGER              -- Identificador del equipo   
    goles INTERGER      
);

CREATE TABLE partidos (
    id INTEGER PRIMARY KEY,     -- Identificador del partido
    equipo1 INTEGER,            -- Clave al identificador del equipo 1
    equipo2 INTEGER,            -- Clave al identificador del equipo 2
    fecha DATETIME,             -- Fecha del partido
    golesEquipo1 INTEGER,       -- Goles marcados por el equipo 1
    golesEquipo2 INTEGER        -- Goles marcados por el equipo 2
);

-- Datos de equipos
INSERT INTO equipos (nombre, creacion, origen) VALUES
    ('Oviedo', 2025, 'ASIR'),
    ('Almeria', 2025, 'DAM'),
    ('Leon', 2025, 'DAW'),
    ('Huelva', 2025, 'AF'),
    ('Sevilla', 2025, 'ASIR'),
    ('Santander', 2025, 'DAM'),
    ('Las Palmas', 2025, 'DAW'),
    ('Segovia', 2025, 'ASIR'),
    ('Burgos', 2025, 'DAM'),
    ('A Coruña', 2025, 'DAW'),
    ('Zamora', 2025, 'ASIR'),
    ('Albacete', 2025, 'DAM');

-- Jugadores aleatorios

INSERT INTO jugadores (nombre, edad, posicion, numero, equipo, goles) VALUES
    ('Adrian Giralte', 23, 'Medio campor', 10, 'Almería'),
    ('Javier Giralte', 29, 'Medio campor', 7, 'Almería'),
    ('Lucas Rubio', 20, 'Portero', 1, 'Almería'),
    ('Adrian Arequipa', 22, 'Defensa', 2, 'Almería'),
    ('Iván Velasco', 26, 'Defensa', 5, 'Almería'),
    ('Nicolás García', 22, 'Medio campor', 3, 'Almería'),
    ('Rafael Santibañez', 28, 'Defensa', 12, 'Almería'),
    ('Jaime Gomez', 21, 'Delantero', 6, 'Almería'),
    ('Alejandro Rodrigo', 20, 'Defensa', 8, 'Almería'),
    ('Marcos Barrio', 20, 'Medio campor', 9, 'Almería'),
    ('Alvaro Hernandez', 19, 'Delantero', 11, 'Almería'),
    ('Emilio Canet', 20, 'Banquillo', 14, 'Almería'),
    ('Alvaro Pedrosa',17 , 'Defensa', 2, 'Leon'),
    ('Jorge Esteve', 17, 'Defensa', 3, 'Leon'),
    ('Rodrigo Estevan', 16, 'Defensa', 4, 'Leon'),
    ('Jesús Vaslenciano', 18, 'Medio Campo', 5, 'Leon'),
    ('Cristian Gallego', 16, 'Medio Campo', 7, 'Leon'),
    ('Pablo Blanco', 18, 'Medio Campo', 8, 'Leon'),
    ('Leonardo Nicaudie', 17, 'Delantero', 9, 'Leon'),
    ('Borja Núñez', 16, 'Delantero', 10, 'Leon'),
    ('Hugo del Molino', 16, 'Delantero', 11, 'Leon'),
    ('Álvaro Silva', 18, 'Portero', 1, 'Burgos'),
    ('Alfonso Boredería', 17, 'Defensa', 2, 'Burgos'),
    ('Miguel Vargas', 17, 'Defensa', 3, 'Burgos'),
    ('D. Ignacio López-MesMedio Campoeguer', 45, 'Defensa', 4, 'Burgos'),
    ('Ricardo Ugarte', 18, 'Medio Campo', 6, 'Burgos'),
    ('Yerom Martínez', 17, 'Medio Campo', 7, 'Burgos'),
    ('Gonzalo de Pablos', 17, 'Medio Campo', 8, 'Burgos'),
    ('Gabriel Zapatero',18 , 'Delantero', 9, 'Burgos'),
    ('Pablo Alonso', 18, 'Delantero', 10, 'Burgos'),
    ('Jonathan D. Palo', 17, 'Delantero', 11, 'Burgos'),
    ('Julio Segarra', 25, 'Portero', 1, 'Oviedo'),
    ('Jorge Ramos', 26, 'Defensa', 3, 'Oviedo'),
    ('Juan Urrutia', 28, 'Defensa', 4, 'Oviedo'),
    ('Carlos Núñez', 27, 'Defensa', 5, 'Oviedo'),
    ('Alberto Marrtínez', 25, 'Medio Campo', 6, 'Oviedo'),
    ('Guillermo Gómez', 26, 'Medio Campo', 7, 'Oviedo'),
    ('Borja del Arco', 26, 'Medio Campo', 8, 'Oviedo'),
    ('Victor Manuel Arán', 25, 'Delantero', 9, 'Oviedo'),
    ('Jaime Núñez de prado', 27, 'Delantero', 10, 'Oviedo'),
    ('Guillermo Cruz', 28, 'Delantero', 11, 'Oviedo'),
    ('Jorge Espinós', 26, 'Defensa', 12, 'Oviedo'),
    ('Pelayo Bernárdez', 18, 'Portero', 1, 'A Coruña'),
    ('Jorge Miró', 17, 'Defensa', 3, 'A Coruña'),
    ('Pablo Barrientos', 18, 'Defensa', 4, 'A Coruña'),
    ('Jorge Bueno', 17, 'Defensa', 5, 'A Coruña'),
    ('Pablo Casas', 19, 'Medio Campo', 6, 'A Coruña'),
    ('Jaime Gómez', 18, 'Medio Campo', 7, 'A Coruña'),
    ('Angel de Mateo', 17, 'Medio Campo', 8, 'A Coruña'),
    ('Carlos Hernández', 17, 'Delantero', 9, 'A Coruña'),
    ('Pablo López', 19, 'Delantero', 11, 'A Coruña'),
    ('Ignacio Bartolomé', 18, 'Defensa', 14, 'A Coruña'),
    ('Jacobo López-Jurado', 17, 'Defensa', 3, 'Albacete'),
    ('Álvaro Martínez', 19, 'Defensa', 4, 'Albacete'),
    ('Sergio Rodrigo', 17, 'Defensa', 5, 'Albacete'),
    ('Gabriel Rodrigo Salvatirra', 16, 'Medio Campo', 6, 'Albacete'),
    ('Fernando Hernández', 18, 'Medio Campo', 7, 'Albacete'),
    ('Alberto Romeral', 19, 'Medio Campo', 8, 'Albacete'),
    ('Arturo Orea', 16, 'Delantero', 9, 'Albacete'),
    ('Alejandro Rodrigo', 17, 'Delantero', 10, 'Albacete'),
    ('Pablo Paraiso', 19, 'Delantero', 11, 'Albacete'),
    ('D. Josemaría Martínez-Echevarría', 45, 'Portero', 2, 'Las Palmas'),
    ('Juan A. Sebastián', 18, 'Defensa', 3, 'Las Palmas'),
    ('Hugo Calderon', 18, 'Defensa', 4, 'Las Palmas'),
    ('Luís Felipe León', 17, 'Medio Campo', 6, 'Las Palmas'),
    ('Lucas Hernández', 18, 'Delantero', 7, 'Las Palmas'),
    ('Rodrigo G. Valero', 17, 'Medio Campo', 8, 'Las Palmas'),
    ('Joshua Rodríguez', 18, 'Delantero', 9, 'Las Palmas'),
    ('Íñigo Aguado', 17, 'Delantero', 11, 'Las Palmas'),
    ('Gabriel A. Benítez', 16, 'Medio Campo', 12, 'Las Palmas'),
    ('Alberto Arribas', 21, 'Portero', 1, 'Santander'),
    ('Pedro J. Besari', 20, 'Defensa', 2, 'Santander'),
    ('Nicolás Tauler', 19, 'Defensa', 3, 'Santander'),
    ('Emilio Sánchez', 20, 'Defensa', 4, 'Santander'),
    ('Alejandro Megino', 18, 'Defensa', 5, 'Santander'),
    ('Manuel Rodríguez', 18, 'Medio Campo', 6, 'Santander'),
    ('Gabriel Besari', 23, 'Delantero', 7, 'Santander'),
    ('Álvaro Romero', 19, 'Medio Campo', 8, 'Santander'),
    ('Arón Rivas', 19, '', 9, 'Santander'),
    ('Beltrán Gonzalez', 18, 'Delantero', 10, 'Santander'),
    ('Javier Redondo', 18, 'Delantero', 11, 'Santander'),
    ('Alfonso Aragón', 19, 'Medio Campo', 12, 'Santander'),
    ('Marco García', 19, 'Portero', 1, 'Segovia'),
    ('Felipe Viñas', 17, 'Defensa', 2, 'Segovia'),
    ('Hugo López', 18, 'Defensa', 3, 'Segovia'),
    ('Nicolás Romero', 19, 'Defensa', 4, 'Segovia'),
    ('Mario Cazaña', 18, 'Defensa', 5, 'Segovia'),
    ('Lucas Basalo', 20, 'Medio Campo', 6, 'Segovia'),
    ('Jaime Plaza', 19, 'Medio Campo', 7, 'Segovia'),
    ('Javier García', 18, 'Medio Campo', 8, 'Segovia'),
    ('César Martín-Crespo', 18, 'Delantero', 9, 'Segovia'),
    ('Iker de la Quintana', 19, 'Delantero', 10, 'Segovia'),
    ('David Adrés Vicario', 19, 'Delantero', 11, 'Segovia'),
    ('Ignacio Gómez-Carrillo', 18, 'Medio Campo', 12, 'Segovia'),
    ('Daniel Gavira', 17, 'Portero', 1, 'Sevilla'),
    ('Marcos Rico', 19, 'Defensa', 2, 'Sevilla'),
    ('Juan Bosco Nogales', 18, 'Defensa', 3, 'Sevilla'),
    ('Héctor Dos Santos', 18, 'Defensa', 5, 'Sevilla'),
    ('Gonzalo Cid', 17, 'Medio Campo', 7, 'Sevilla'),
    ('César Minayo', 17, 'Medio Campo', 8, 'Sevilla'),
    ('Jaime Ortega', 18, 'Delantero', 9, 'Sevilla'),
    ('Jhon David', 18, 'Delantero', 10, 'Sevilla'),
    ('Iñaki Larrauri', 17, 'Delantero', 11, 'Sevilla'),
    ('Paul Byrne', 19, 'Medio Campo', 12, 'Sevilla'),
    ('Carlos Pardo', 18, 'Defensa', 14, 'Sevilla'),
    ('Leonardo Hernández', 40, 'Portero', 1, 'Zamora'),
    ('Gonzalo Trujillo', 19, 'Defensa', 2, 'Zamora'),
    ('Angel Andres Vicario', 19, 'Defensa', 3, 'Zamora'),
    ('Alejandro Gallego', 22, 'Defensa', 4, 'Zamora'),
    ('Santiago Granda', 20, 'Medio Campo', 5, 'Zamora'),
    ('Luís Pérez-B', 19, 'Delantero', 7, 'Zamora'),
    ('Pascal Bogdanov', 19, 'Medio Campo', 8, 'Zamora'),
    ('David Suárez', 18, 'Delantero', 9, 'Zamora'),
    ('Manuel Palacios', 18, 'Delantero', 11, 'Zamora'),
    ('Gonzalo Pradana', 19, 'Medio Campo', 12, 'Zamora'),
    ('Iganacio Núñez', 19, 'Portero', 1, 'Huelva'),
    ('Gabriel Marina', 18, 'Defensa', 3, 'Huelva'),
    ('Miguel Gratal', 20, 'Defensa', 4, 'Huelva'),
    ('Rodrigo Castro', 18, 'Defensa', 5, 'Huelva'),
    ('Jorge Jonás Castellote', 18, 'Defensa', 6, 'Huelva'),
    ('Alonso Díaz', 19, 'Medio Campo', 7, 'Huelva'),
    ('Nacho Crespo', 20, 'Medio Campo', 8, 'Huelva'),
    ('Gonzalo Núñez', 21, 'Delantero', 9, 'Huelva'),
    ('Antonio Pérez', 18, 'Delantero', 10, 'Huelva'),
    ('Gonzalo Muñoz', 22, 'Delantero', 11, 'Huelva'),
    ('Alfredo Pérez', 19, 'Medio Campo', 12, 'Huelva'),


-- Partidos aleatorios
CREATE TABLE partidos (
    id INTEGER PRIMARY KEY,     -- Identificador del partido
    equipo1 INTEGER,            -- Clave al identificador del equipo 1
    equipo2 INTEGER,            -- Clave al identificador del equipo 2
    fecha DATETIME,             -- Fecha del partido
    golesEquipo1 INTEGER,       -- Goles marcados por el equipo 1
    golesEquipo2 INTEGER        -- Goles marcados por el equipo 2
);

-- Partidos aleatorios
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0),
    (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0);


-- Consultas útiles
SELECT equipo, COUNT(DISTINCT id) AS 'Numero de jugadores' FROM jugadores GROUP BY equipo; -- Jugadores por equipo

-- Partidos que ha ganado el equipo N

SELECT COUNT(DISTINcT id) FROM partidos WHERE (equipo1 = 2 AND golesEquipo1 > golesEquipo2) OR (equipo2 = 2 AND golesEquipo2 > golesEquipo1);

-- Saca todos los jugadores de cierta edad con su id y equipo
SELECT nombre, id, equipo
FROM jugadores
WHERE edad = 20;

-- Saca a los jugadores de un equipo concreto
SELECT nombre, id, equipo
FROM jugadores
WHERE equipo = 'Almería';


SELECT p.id, e1.nombre AS local, e2.nombre AS visitante, p.fecha 
FROM partidos p 
JOIN equipos e1 ON p.equipo1 = e1.id 
JOIN equipos e2 ON p.equipo2 = e2.id 
WHERE p.fecha > datetime('now') 
ORDER BY p.fecha ASC 
LIMIT 1;