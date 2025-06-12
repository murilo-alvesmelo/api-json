FROM node:18

# Criar diretório de trabalho
WORKDIR /app

# Instalar json-server globalmente
RUN npm install -g json-server

# Copiar o arquivo db.json para o container
COPY db.json .

# Expor a porta da API
EXPOSE 3000

# Rodar o json-server na inicialização
CMD ["json-server", "--watch", "db.json", "--host", "0.0.0.0", "--port", "3001"]
