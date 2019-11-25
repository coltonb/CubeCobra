FROM node:latest

RUN mkdir /CubeCobra
WORKDIR /CubeCobra

RUN npm install nodemon -g

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

CMD [ "npm", "run", "docker" ]