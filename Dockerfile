FROM node

RUN mkdir /app
WORKDIR /app
COPY ./flatris/package.json /app

RUN yarn install

COPY ./flatris /app

#RUN yarn test
RUN yarn build

EXPOSE 3000

CMD yarn start

