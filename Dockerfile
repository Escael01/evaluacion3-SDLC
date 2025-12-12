# Usa una imagen base de Node.js (alpine es más ligera)
FROM node:18-alpine

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias de npm (incluyendo jest si está en package.json)
RUN npm install

# Instala Jest globalmente para que esté disponible en cualquier lugar
RUN npm install -g jest

# Copia el resto de los archivos del proyecto al contenedor
COPY . .

# El comando que se ejecutará al iniciar el contenedor (en este caso, tests)
CMD ["npm", "test"]
