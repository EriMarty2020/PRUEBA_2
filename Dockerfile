FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

ENV VOLUME_PATH=/volumen
EXPOSE 3000

CMD ["node", "app.js"]
