FROM node:12.16.1-alpine As node-build

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install && npm install -g @angular/cli

