FROM node:lts-alpine3.9

RUN mkdir /app
WORKDIR /app
COPY ./src/package.json /app

RUN yarn install

COPY ./src /app

#RUN yarn test
RUN yarn build

EXPOSE 3000

CMD yarn start

