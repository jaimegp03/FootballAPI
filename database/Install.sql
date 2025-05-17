CREATE TABLE equipos (
    id INTEGER PRIMARY KEY,     -- Identificador del equipo
    nombre TEXT,                -- Nombre del equipo
    creacion INTEGER            -- Año de creación
);

CREATE TABLE jugadores (
    id INTEGER PRIMARY KEY,     -- Identificador único del jugador
    nombre TEXT,                -- Nombre del jugador
    edad INTEGER,               -- Edad del jugador
    posicion TEXT,              -- Posición en el campo
    numero INTEGER,             -- Número en el dorsal
    equipo INTEGER              -- Identificador del equipo         
);

CREATE TABLE partidos (
    id INTEGER PRIMARY KEY,     -- Identificador del partido
    equipo1 INTEGER,            -- Clave al identificador del equipo 1
    equipo2 INTEGER,            -- Clave al identificador del equipo 2
    fecha DATETIME,             -- Fecha del partido
    golesEquipo1 INTEGER,       -- Goles marcados por el equipo 1
    golesEquipo2 INTEGER        -- Goles marcados por el equipo 2
);

CREATE TABLE usuarios (
    username TEXT PRIMARY KEY,
    name TEXT,
    password TEXT
);

-- Datos de equipos
INSERT INTO equipos (nombre, creacion) VALUES
    ('Oviedo', 2025),
    ('Almeria', 2025),
    ('Leon', 2025),
    ('Huelva', 2025),
    ('Sevilla', 2025),
    ('Santander', 2025),
    ('Las Palmas', 2025),
    ('Segovia', 2025),
    ('Burgos', 2025),
    ('A Coruña', 2025),
    ('Zamora', 2025),
    ('Albacete', 2025);

-- Jugadores aleatorios

-- Almería
INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
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

-- Leon
INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
('Alvaro Pedrosa',17 , 'Defensa', 2, 'Leon'),
('Jorge Esteve', 17, 'Defensa', 3, 'Leon'),
('Rodrigo Estevan', 16, 'Defensa', 4, 'Leon'),
('Jesús Vaslenciano', 18, 'Medio Campo', 5, 'Leon'),
('Cristian Gallego', 16, 'Medio Campo', 7, 'Leon'),
('Pablo Blanco', 18, 'Medio Campo', 8, 'Leon'),
('Leonardo Nicaudie', 17, 'Delantero', 9, 'Leon'),
('Borja Núñez', 16, 'Delantero', 10, 'Leon'),
('Hugo del Molino', 16, 'Delantero', 11, 'Leon'),

INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- Burgos
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


INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- Oviedo
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


INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- A Coruña
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


INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- Albacete
('Jacobo López-Jurado', 17, 'Defensa', 3, 'Albacete'),
('Álvaro Martínez', 19, 'Defensa', 4, 'Albacete'),
('Sergio Rodrigo', 17, 'Defensa', 5, 'Albacete'),
('Gabriel Rodrigo Salvatirra', 16, 'Medio Campo', 6, 'Albacete'),
('Fernando Hernández', 18, 'Medio Campo', 7, 'Albacete'),
('Alberto Romeral', 19, 'Medio Campo', 8, 'Albacete'),
('Arturo Orea', 16, 'Delantero', 9, 'Albacete'),
('Alejandro Rodrigo', 17, 'Delantero', 10, 'Albacete'),
('Pablo Paraiso', 19, 'Delantero', 11, 'Albacete'),


INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
--Las Palmas
('D. Josemaría Martínez-Echevarría', 45, 'Portero', 2, 'Las Palmas'),
('Juan A. Sebastián', 18, 'Defensa', 3, 'Las Palmas'),
('Hugo Calderon', 18, 'Defensa', 4, 'Las Palmas'),
('Luís Felipe León', 17, 'Medio Campo', 6, 'Las Palmas'),
('Lucas Hernández', 18, 'Delantero', 7, 'Las Palmas'),
('Rodrigo G. Valero', 17, 'Medio Campo', 8, 'Las Palmas'),
('Joshua Rodríguez', 18, 'Delantero', 9, 'Las Palmas'),
('Íñigo Aguado', 17, 'Delantero', 11, 'Las Palmas'),
('Gabriel A. Benítez', 16, 'Medio Campo', 12, 'Las Palmas'),


INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- Santander
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


INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- Segovia
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


INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- Sevilla
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

INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- Zamora
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


INSERT INTO jugadores (nombre, edad, posicion, numero, equipo) VALUES
-- Huelva
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


-- ('sin-nombre', 99, 'sin-posicion', 2, ABS(RANDOM() % (11 - 1 + 1)) + 1);

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

-- 07/10/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Leon', 'Las Palmas', '07/10/2024', 7, 2),
    ('Albacete', 'Segovia', '07/10/2024', 6, 3),
    ('Zamora', 'Almería', '07/10/2024', 0, 9),
    ('Burgo', 'A Coruña', '07/10/2024', 0, 6),
    ('Santander', 'Huelva', '07/10/2024', 0, 7),
    ('Oviedo', 'Sevilla', '07/10/2024', 6, 2),
    ('Segovia', 'Leon', '07/10/2024', 0, 7),
    ('Sevilla', 'Albacete', '07/10/2024', 6, 0),
    ('Almería', 'Santander', '07/10/2024', 3, 0),
    ('A Coruña', 'Zamora', '07/10/2024', 0, 3),
    ('Las Palmas', 'Burgos', '07/10/2024', 2, 7),

-- 14/10/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Burgos', 'Segovia', '14-10-2024', 0, 4),
    ('Santander', 'A Coruña', '14-10-2024', 8, 1),
    ('Zamora', 'Las Palmas', '14-10-2024', 9, 3),
    ('Leon', 'Sevilla', '14-10-2024', 5, 4),
    ('Almería', 'Albacete', '14-10-2024', 14, 1),

-- 17/10/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Albacete', 'Oviedo', '17-10-2024', 0, 6),
    ('Almería', 'Huelva', '17-10-2024', 2, 1),

-- 21/10/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Sevilla', 'Burgos', '21-10-2024', 8, 2),
    ('Segovia', 'Zamora', '21-10-2024', 0, 4),
    ('A Coruña', 'Almería', '21-10-2024', 2, 11),
    ('Las Palmas', 'Santander', '21-10-2024', 3, 6),

-- 24/10/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Oviedo', 'Leon', '24-10-2024', 3, 1),

-- 28/10/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Leon', 'Albacete', '28-10-2024', 14, 3),
    ('Santander', 'Segovia', '28-10-2024', 3, 0),
    ('Zamora', 'Sevilla', '28-10-2024', 3, 0),
    ('Almería', 'Las Palmas', '28-10-2024', 12, 0),
    ('A Coruña', 'Burgos', '28-10-2024', 3, 0),

-- 29/10/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Huelva', 'Leon', '29-10-2024', 1, 4),
    ('Oviedo', 'Zamora', '29-10-2024', 4, 2),

-- 04/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Las Palmas', 'A Coruña', '04-11-2024', 1, 8),
    ('Segovia', 'Almería', '04-11-2024', 2, 7),
    ('Sevilla', 'Santander', '04-11-2024', 4, 0),
    ('Leon', 'Zamora', '04-11-2024', 6, 5),
    ('Albacete', 'Burgos', '04-11-2024', 4, 4),

-- 07/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('A Coruña', 'Huelva', '07-11-2024', 1, 7),
    ('Burgos', 'Oviedo', '07-11-2024', 1, 9),

-- 11/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Las Palmas', 'Albacete', '11-11-2024', 3, 1),
    ('Burgos', 'Leono', '11-11-2024', 0, 7),
    ('Almería', 'Sevilla', '11-11-2024', 3, 1),
    ('A Coruña', 'Segovia', '11-11-2024', 0, 4),
    ('Santander', 'Zamora', '11-11-2024',2 , 3),

-- 14/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Santander', 'Oviedo', '14-11-2024', 1, 7),
    ('Huelva', 'Albacete', '14-11-2024', 0, 0),

-- 18/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Santander', 'Leon', '18-11-2024', 1, 3),
    ('Sevilla', 'A Coruña', '18-11-2024', 2, 0),
    ('Zamora', 'Albacete', '18-11-2024', 1, 3),
    ('Segovia', 'Las Palmas', '18-11-2024', 0, 5),

-- 21/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Oviedo', 'Almería', '21-11-2024', 3, 3),
    ('Las Palmas', 'Huelva', '21-11-2024', 1, 6),

-- 25/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Leon', 'Almería', '25-11-2024', 1, 5),
    ('Las Palmas', 'Sevilla', '25-11-2024', 0, 2),
    ('Zamora', 'Burgos', '25-11-2024', 5, 2),
    ('Albacete', 'Santander', '25-11-2024', 6, 9),

-- 26/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Huelva', 'Burgos', '26-11-2024', 9, 0),

-- 28/11/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('A Coruña', 'Oviedo', '28-11-2024', 0, 0),
    ('Segovia', 'Huelva', '28-11-2024', 0, 7),

-- 02/12/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Albacete', 'A Coruña', '02-12-2024', 7, 3),
    ('Burgos', 'Santander', '02-12-2024', 0, 6),
    ('Las Palmas', 'Zamora', '02-12-2024', 0, 0),
    ('Sevilla', 'Segovia', '02-12-2024', 7, 4),

-- 03/12/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Las Palmas', 'Oviedo', '03-12-2024', 1, 7),
    ('Zamora', 'Huelva', '03-12-2024', 0, 3),

-- 09/12/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Albacete', 'Santander', '09-12-2024', 2, 7),
    ('A coruña', 'Leon', '09-12-2024', 2, 4),
    ('Almería', 'Burgos', '09-12-2024', 9, 2),
    ('Santander', 'Las Palmas', '09-12-2024', 6, 4),
    ('Zamora', 'Segovia', '09-12-2024', 2, 4),

-- 10/12/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Huelva', 'Sevilla', '10-12-2024', 1, 4),
    ('Segovia', 'Oviedo', '10-12-2024', 1, 6),

-- 12/12/2024
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Huelva', 'Oviedo', '12-12-2024', 2, 2),

-- 13/01/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Segobia', 'Albacete', '13-01-2025', 3, 4),
    ('A Coruña', 'Santander', '13-01-2025',0 , 0),
    ('Almería', 'Zamora', '13-01-2025', 6, 0),

-- 16/01/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Sevilla', 'Oviedo', '16-01-2025', 1, 9),
    ('Huelva', 'Santander', '16-01-2025', 5, 0),

-- 20/01/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Burgos', 'Las Palmas', '20-01-2025', 1, 4),
    ('Sevilla', 'Almería', '20-01-2025', 2, 6),
    ('Santander', 'Albacete', '20-01-2025', 7, 5),
    ('Zamora', 'A Coruña', '20-01-2025', 2, 5),
    ('Leon', 'Segovia', '20-01-2025', 11, 1),

-- 27/01/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Segovia', 'Burgos', '27-01-2025', 1, 2),
    ('Sevilla', 'Leon', '27-01-2025', 0, 2),
    ('A Coruña', 'Las Palmas', '27-01-2025', 4, 2),
    ('Santander', 'Almería', '27-01-2025', 5, 2),

-- 30/01/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Las Palmas', 'Leon', '30-01-2025', 2, 8),
    ('Huelva', 'Almería', '30-01-2025', 1, 3),
    ('Oviedo', 'Albacete', '30-01-2025', 6, 0),

-- 03/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Burgos', 'Zamora', '03-02-2025', 0, 2),
    ('Almería', 'A Coruña', '03-02-2025', 5, 1),
    ('Segovia', 'Santander', '03-02-2025', 3, 6),
    ('Albacete', 'Leon', '03-02-2025', 0, 0),
    ('Sevilla', 'Las Palmas', '03-02-2025', 11, 4),

-- 06/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Leon', 'Oviedo', '06-02-2025', 1, 5),

-- 10/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Albacete', 'Zamora', '10-02-2025', 0, 0),
    ('Segovia', 'A Coruña', '10-02-2025', 2, 3),
    ('Leon', 'Santander', '10-02-2025', 0, 0),
    ('Las Palmas', 'Almería', '10-02-2025', 5, 9),
    ('Burgos', 'Sevilla', '10-02-2025', 0, 17),

-- 13/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Las Palmas', 'Oviedo', '13-02-2025', 1, 9),
    ('Huelva', 'A Coruña', '13-02-2025', 0, 0),

-- 17/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Albacete', 'Las Palmas', '17-02-2025', 7, 3),
    ('Almería', 'Segovia', '17-02-2025', 4, 2),
    ('Santander', 'Sevilla', '17-02-2025', 1, 3),
    ('Leon', 'Burgos', '17-02-2025', 8, 3),

-- 18/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Las Palmas', 'Segovia', '18-02-2025', 4, 2),
    ('Oviedp', 'Santander', '18-02-2025', 2, 0),
    ('Burgos', 'Huelva', '18-02-2025', 2, 7),

-- 20/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Huelva', 'Leon', '20-02-2025', 2, 3),
    ('Oviedo', 'Burgos', '20-02-2025', 6, 1),

-- 24/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Burgos', 'Albacete', '24-02-2025', 0, 1),
    ('Segovia', 'Sevilla', '24-02-2025', 0, 6),
    ('Almería', 'Leon', '24-02-2025', 9, 1),

-- 25/02/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Huelva', 'Segovia', '25-02-2025', 10, 3),

-- 05/03/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Burgos', 'Almería', '05-03-2025', 3, 9),
    ('Oviedo', 'Segovia', '05-03-2025', 7, 1),
    ('Albacete', 'Huelva', '05-03-2025', 0, 0),

-- 06/03/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Huelva', 'Las Palmas', '06-03-2025', 8, 2),

-- 10/03/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Santander', 'Almería', '10-03-2025', 3, 6),
    ('Segovia', 'Sevilla', '10-03-2025', 0, 5),
    ('Burgos', 'Albacete', '10-03-2025', 4, 0),

-- 11/03/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Huelva', 'Oviedo', '11-03-2025', 0, 1),

-- 17/03/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Santander', 'Burgos', '17-03-2025', 3, 1),

-- 25/03/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Sevilla', 'Huelva', '25-03-2025', 0, 2),

-- 14/05/2025
INSERT INTO partidos (equipo1, equipo2, fecha, golesEquipo1, golesEquipo2) VALUES
    ('Almería', 'Oviedo', '14-05-2025', 4, 2),



-- (ABS(RANDOM() % (11 - 1 + 1)) + 1, ABS(RANDOM() % (11 - 1 + 1)) + 1, CURRENT_TIMESTAMP , ABS(RANDOM() % (11 - 0 + 1)) + 0, ABS(RANDOM() % (11 - 0 + 1)) + 0);


-- Consultas útiles
SELECT equipo, COUNT(DISTINCT id) AS 'Numero de jugadores' FROM jugadores GROUP BY equipo; -- Jugadores por equipo

-- Partidos que ha ganado el equipo N

SELECT COUNT(DISTINcT id) FROM partidos WHERE (equipo1 = 2 AND golesEquipo1 > golesEquipo2) OR (equipo2 = 2 AND golesEquipo2 > golesEquipo1);

-- Saca todos lospartidos jugados, ganados, perdido y empatados

SELECT
  'Almería' AS Equipo,
  COUNT(*) AS "Partidos jugados",
  SUM(
    (Local = 'Almería' AND "Goles Local" > "Goles Visitante") OR
    (Visitante = 'Almería' AND "Goles Visitante" > "Goles Local")
  ) AS "Partidos ganados",
  SUM(
    (Local = 'Almería' AND "Goles Local" < "Goles Visitante") OR
    (Visitante = 'Almería' AND "Goles Visitante" < "Goles Local")
  ) AS "Partidos perdidos",
  SUM(
    (Local = 'Almería' OR Visitante = 'Almería')
    AND "Goles Local" = "Goles Visitante"
  ) AS "Partidos empatados"
FROM partidos
WHERE Local = 'Almería' OR Visitante = 'Almería';

-- Saca todos los goles de un equipo

SELECT
  'Almería' AS equipo,
  SUM(
    CASE WHEN Local = 'Almería' THEN "Goles Local" ELSE 0 END +
    CASE WHEN Visitante = 'Almería' THEN "Goles Visitante" ELSE 0 END
  ) AS "Goles Totales"
FROM partidos;

-- Saca todos los goles que ha encajado cada equipo

SELECT
  'Almería' AS equipo,
  SUM(
    CASE
      WHEN Local = 'Almería' THEN "Goles Visitante"
      WHEN Visitante = 'Almería' THEN "Goles Local"
      ELSE 0
    END
  ) AS goles_recibidos
FROM partidos;

-- Saca todos los goles a favor, en contra y la diferencia

SELECT
  'Almería' AS equipo,
  SUM(
    CASE
      WHEN Local = 'Almería' THEN "Goles Local"
      WHEN Visitante = 'Almería' THEN "Goles Visitante"
      ELSE 0
    END
  ) AS goles_a_favor,
  SUM(
    CASE
      WHEN Local = 'Almería' THEN "Goles Visitante"
      WHEN Visitante = 'Almería' THEN "Goles Local"
      ELSE 0
    END
  ) AS goles_en_contra,
  SUM(
    CASE
      WHEN Local = 'Almería' THEN "Goles Local" - "Goles Visitante"
      WHEN Visitante = 'Almería' THEN "Goles Visitante" - "Goles Local"
      ELSE 0
    END
  ) AS diferencia_de_goles
FROM partidos
WHERE Local = 'Almería' OR Visitante = 'Almería';


-- Saca todos los partidos que se han jugado en una fecha concreta

SELECT *
FROM partidos
WHERE fecha = '17-02-2025';

-- Saca todas las fechas en las que se jugo un partido y el numero de partidos que se jugo

SELECT 
  fecha,
  COUNT(*) AS "Partidos jugados"
FROM partidos
GROUP BY fecha
ORDER BY fecha;


-- Saca todos los partidos que a jugado un equipo

SELECT *
FROM partidos
WHERE Local = 'Almería'
   OR Visitante = 'Almería';


-- Saca todos los jugadores de cierta edad con su id y equipo
SELECT nombre, id, equipo
FROM jugadores
WHERE edad = 20;

-- Saca a los jugadores de un equipo concreto
SELECT nombre, id, equipo
FROM jugadores
WHERE equipo = 'Almería';

-- Saca todo los partidos que a jugado un equipo contra otro

SELECT *
FROM partidos
WHERE (Local = 'Almería' AND Visitante = 'Oviedo')
   OR (Local = 'Oviedo' AND Visitante = 'Almería');

-- cambio de nombre de columnas
ALTER TABLE partidos
RENAME COLUMN golesEquipo2 TO "Goles Visitante";