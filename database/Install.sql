-- Tabla de usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id INTEGER PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT,
    is_admin BOOLEAN DEFAULT 0
);

-- Inserta un usuario admin
INSERT OR IGNORE INTO usuarios (username, password, is_admin)
VALUES ('admin', '123456', 1);


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
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),
    ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (15 - 0 + 1)) + 0),


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