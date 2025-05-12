consulta_clasificaciones = """
SELECT 
    equipo_id,
    (SELECT nombre FROM equipos WHERE id = equipo_id) AS nombre,
    SUM(jugados) AS partidos_jugados,
    SUM(ganados) AS ganados,
    SUM(empatados) AS empatados,
    SUM(perdidos) AS perdidos,
    SUM(puntos) AS puntos
FROM (
    -- Participaciones como equipo1
    SELECT 
        equipo1 AS equipo_id,
        1 AS jugados,
        CASE WHEN golesEquipo1 > golesEquipo2 THEN 1 ELSE 0 END AS ganados,
        CASE WHEN golesEquipo1 = golesEquipo2 THEN 1 ELSE 0 END AS empatados,
        CASE WHEN golesEquipo1 < golesEquipo2 THEN 1 ELSE 0 END AS perdidos,
        CASE 
            WHEN golesEquipo1 > golesEquipo2 THEN 3
            WHEN golesEquipo1 = golesEquipo2 THEN 1
            ELSE 0
        END AS puntos
    FROM partidos

    UNION ALL

    -- Participaciones como equipo2
    SELECT 
        equipo2 AS equipo_id,
        1 AS jugados,
        CASE WHEN golesEquipo2 > golesEquipo1 THEN 1 ELSE 0 END AS ganados,
        CASE WHEN golesEquipo2 = golesEquipo1 THEN 1 ELSE 0 END AS empatados,
        CASE WHEN golesEquipo2 < golesEquipo1 THEN 1 ELSE 0 END AS perdidos,
        CASE 
            WHEN golesEquipo2 > golesEquipo1 THEN 3
            WHEN golesEquipo2 = golesEquipo1 THEN 1
            ELSE 0
        END AS puntos
    FROM partidos
)
GROUP BY equipo_id
ORDER BY puntos DESC;

"""