FROM node:18

WORKDIR /app

# Copiar primero package.json y package-lock.json
COPY package*.json ./

RUN npm install

# Copiar todo el código (incluyendo index.js y index.test.js)
COPY . .

# Comando por defecto
CMD ["npm", "start"]
