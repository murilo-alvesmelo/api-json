# Usar imagem base do Node.js
FROM node:18

# Criar diretório de trabalho dentro do container
WORKDIR /app

# Copiar arquivos de dependência e instalar pacotes
COPY package*.json ./
RUN npm install

# Copiar o restante da aplicação
COPY . .

# Expor as portas usadas pela aplicação
EXPOSE 8800 3002

# Comando para rodar a aplicação
CMD ["node", "index.js"]
