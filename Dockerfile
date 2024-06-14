FROM node:18-alpine

RUN mkdir -p /usr/nucleus/app   && chown -R node:node /usr/nucleus/app

WORKDIR /usr/nucleus/app

USER node

COPY package.json package-lock.json ./

RUN npm ci

COPY --chown=node:node . .

EXPOSE 3000
