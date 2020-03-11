FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn

RUN yarn build

CMD yarn theia start /my-workspace --hostname 0.0.0.0 --port 8080
