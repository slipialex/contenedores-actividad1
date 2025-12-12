FROM node:18

WORKDIR /app

# Crear proyecto cuando se construye la imagen
RUN npm init -y
RUN npm install express

# Crear archivo server.js automÃ¡ticamente
RUN echo "const express=require('express');const app=express();const port=3000;app.get('/',(req,res)=>res.send('App creada automaticamente en la imagen Docker Alejandro Gonzalez Ruiz'));app.listen(port,()=>console.log('OK'));" > server.js

EXPOSE 3000

CMD ["node", "server.js"]