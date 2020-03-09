FROM node:lts
COPY package*.json ./
RUN npm install
RUN which npm
COPY . .
