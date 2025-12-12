# Imagen base
FROM node:18

# Crear directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install --production

# Copiar el resto del código
COPY . .

# Puerto opcional (si tu app expone uno)
EXPOSE 3000

# Ejecutar la aplicación
CMD ["node", "app.js"]

# docker run -d --name app-node-db `
#   -e DB_HOST=host.docker.internal `
#   -e DB_USER=root `
#   -e DB_PASSWORD=root `
#   -e DB_NAME=test `
#   app-node-db
