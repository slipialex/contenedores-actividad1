FROM python:3.11-slim

# Crear directorio de trabajo
WORKDIR /app

# Instalar Flask
RUN pip install flask

# Crear archivo app.py automáticamente
RUN echo "from flask import Flask\napp = Flask(__name__)\n\n@app.route('/')\ndef home():\n    return 'App Python creada automáticamente en Docker. Alejandro Gonzalez Ruiz'\n\nif __name__ == '__main__':\n    app.run(host='0.0.0.0', port=80)" > app.py

# Exponer el puerto 80
EXPOSE 80

# Ejecutar la aplicación
CMD ["python", "app.py"]
