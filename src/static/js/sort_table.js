document.addEventListener("DOMContentLoaded", function () {
    const headers = document.querySelectorAll("#tabla-clasificacion thead th");
    const tableBody = document.getElementById("tabla-body");

    let datosOriginales = [];
    let estadoOrden = {};

    // Cargar datos iniciales
    Array.from(tableBody.rows).forEach(row => {
        const celdas = row.querySelectorAll("td");
        datosOriginales.push({
            tr: row,
            equipo: celdas[0].innerText.trim(),
            puntos: parseInt(celdas[1].innerText),
            goles_favor: parseInt(celdas[2].innerText),
            goles_contra: parseInt(celdas[3].innerText),
            diferencia_goles: parseInt(celdas[4].innerText),
            derrotas: parseInt(celdas[5].innerText),
            empates: parseInt(celdas[6].innerText),
            victorias: parseInt(celdas[7].innerText),
            partidos_jugados: parseInt(celdas[8].innerText)
        });
    });

    headers.forEach(header => {
        header.addEventListener("click", () => {
            const columna = header.getAttribute("data-column");

            if (!columna) return;

            // Alternar estado de ordenación
            if (!estadoOrden[columna]) {
                estadoOrden[columna] = "asc";
            } else if (estadoOrden[columna] === "asc") {
                estadoOrden[columna] = "desc";
            } else {
                estadoOrden[columna] = null;
            }

            // Limpiar otros estados
            headers.forEach(h => h.classList.remove("asc", "desc"));
            if (estadoOrden[columna]) {
                header.classList.add(estadoOrden[columna]);
            }

            // Ordenar datos localmente
            let datosFiltrados = [...datosOriginales];

            if (estadoOrden[columna]) {
                datosFiltrados.sort((a, b) => {
                    const valA = a[columna];
                    const valB = b[columna];

                    if (typeof valA === 'number' && typeof valB === 'number') {
                        return estadoOrden[columna] === "asc" ? valA - valB : valB - valA;
                    } else {
                        return estadoOrden[columna] === "asc"
                            ? valA.localeCompare(valB)
                            : valB.localeCompare(valA);
                    }
                });
            }

            // Limpiar y reinsertar filas
            tableBody.innerHTML = "";
            datosFiltrados.forEach(dato => {
                tableBody.appendChild(dato.tr);
            });
        });
    });
});