FROM arm32v7/node:10

RUN mkdir /app
WORKDIR /app
COPY package.json /app/package.json
RUN npm install

COPY . /app

CMD ["node", "/app/testServer.js"]

