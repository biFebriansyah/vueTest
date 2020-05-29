FROM node:latest

RUN mkdir -p /usr/src/vuetest

WORKDIR /usr/src/vuetest

COPY package*.json ./

COPY . .

RUN npm install

EXPOSE 9000

CMD [ "node", "app.js" ]