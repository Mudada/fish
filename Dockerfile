FROM node:17.0.1

WORKDIR /code

RUN npm install -g spago
RUN npm install -g purescript

COPY . .

CMD spago build --watch