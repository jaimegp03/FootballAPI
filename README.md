# FootballAPI
API destinada a devolver estadísticas sobre equipos de fútbol, ligas, competiciones, etc.


Para subir cambios
```git
git add .
git commit -m "Descripción de cambio"
git push origin
```

Para descargar los cambios de la nube:
```git
git pull origin
```

## 2. Configurar entorno virtual
1. Crear un entorno virtual
    ```bash
    python -m venv env
    ```
2. Activar el entorno virtual:
    ```bash
    call env/scripts/activate
    ```
    > Si se quiere desactivar, cambiar _activate_ por _deactivate_
3. Instalar los requisitos. Antes de ejecutar este comando, comprobar que aparece al principio de la línea el texto _(env)_ o similar:
    ```bash
    pip install -r requirements.txt
    ```

## Iniciar SQLite3
1. Ejecutar el programa
2. Ejecutar primero el comando:
    ```bash
    .mode box
    ```
3. Guardar los cambios realizados en un archivo:
    ```bash
    .backup nombre_Archivo.db
    ```



Ejecutar la API:
```bash
flask --app main.py --debug run
```