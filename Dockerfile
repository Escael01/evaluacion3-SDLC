# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json para instalar las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Si necesitas que jest esté disponible globalmente en el contenedor
RUN npm install -g jest

# Copia todo el código fuente al contenedor
COPY . .

# Expone el puerto que utiliza la aplicación (ajustar según tu caso)
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "index.test.js"]
