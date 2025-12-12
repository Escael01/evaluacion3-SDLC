FROM node:18-alpine

WORKDIR /app

# Copiar los archivos package.json y package-lock.json primero para aprovechar la caché de Docker
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto del código fuente
COPY . .

# Ejecutar las pruebas con Jest
CMD ["npm", "test"]
