consulta_clasificaciones = """
SELECT 
    e.id AS equipo_id,
    e.nombre AS equipo,
    SUM(CASE WHEN e.id = p.equipo1 THEN 1 WHEN e.id = p.equipo2 THEN 1 ELSE 0 END) AS partidos_jugados,
    
    SUM(CASE 
            WHEN e.id = p.equipo1 AND p.golesEquipo1 > p.golesEquipo2 THEN 1 
            WHEN e.id = p.equipo2 AND p.golesEquipo2 > p.golesEquipo1 THEN 1 
            ELSE 0 
        END) AS victorias,
    
    SUM(CASE 
            WHEN p.golesEquipo1 = p.golesEquipo2 AND (e.id = p.equipo1 OR e.id = p.equipo2) THEN 1 
            ELSE 0 
        END) AS empates,
    
    SUM(CASE 
            WHEN e.id = p.equipo1 AND p.golesEquipo1 < p.golesEquipo2 THEN 1 
            WHEN e.id = p.equipo2 AND p.golesEquipo2 < p.golesEquipo1 THEN 1 
            ELSE 0 
        END) AS derrotas,

    SUM(CASE 
            WHEN e.id = p.equipo1 THEN p.golesEquipo1 
            WHEN e.id = p.equipo2 THEN p.golesEquipo2 
            ELSE 0 
        END) AS goles_favor,

    SUM(CASE 
            WHEN e.id = p.equipo1 THEN p.golesEquipo2 
            WHEN e.id = p.equipo2 THEN p.golesEquipo1 
            ELSE 0 
        END) AS goles_contra,

    SUM(CASE 
            WHEN e.id = p.equipo1 THEN p.golesEquipo1 - p.golesEquipo2 
            WHEN e.id = p.equipo2 THEN p.golesEquipo2 - p.golesEquipo1 
            ELSE 0 
        END) AS diferencia_goles,

    SUM(CASE 
            WHEN e.id = p.equipo1 AND p.golesEquipo1 > p.golesEquipo2 THEN 3 
            WHEN e.id = p.equipo2 AND p.golesEquipo2 > p.golesEquipo1 THEN 3 
            WHEN p.golesEquipo1 = p.golesEquipo2 AND (e.id = p.equipo1 OR e.id = p.equipo2) THEN 1 
            ELSE 0 
        END) AS puntos

FROM equipos e
LEFT JOIN partidos p ON e.id = p.equipo1 OR e.id = p.equipo2
GROUP BY e.id
ORDER BY puntos DESC, diferencia_goles DESC, goles_favor DESC;


"""


consulta_equipos_mas_goleadores = """

SELECT 
    equipo_id,
    SUM(goles) AS goles_favor
FROM (
    SELECT equipo1 AS equipo_id, golesEquipo1 AS goles FROM partidos
    UNION ALL
    SELECT equipo2 AS equipo_id, golesEquipo2 AS goles FROM partidos
)
GROUP BY equipo_id
ORDER BY goles_favor DESC;


"""