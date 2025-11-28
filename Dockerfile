# Usa una imagen base oficial de Node
FROM node:18-alpine

# Crea directorio de trabajo
WORKDIR /app

# Copia package.json y package-lock.json
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Expone el puerto
EXPOSE 3000

# Comando por defecto
CMD ["npm", "start"]
