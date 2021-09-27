FROM node

MAINTAINER phael.rj@gmail.com

WORKDIR /usr/src/app

COPY ./src/package*.json ./

RUN npm install --production --silent

COPY ./src/* .
COPY ./src/views/* ./views/

EXPOSE 8080

CMD [ "node", "server.js" ]
