FROM node:17.0.1

WORKDIR /code

RUN npm install -g spago
RUN npm install -g purescript
RUN npm install -g webpack webpack-cli
RUN npm install

COPY . .

CMD spago build --watch