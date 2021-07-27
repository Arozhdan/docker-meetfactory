FROM strapi/strapi

WORKDIR /srv/app

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY favicon.ico .
COPY public/robots.txt public/
COPY extensions/ extensions/
COPY api/ api/
COPY config/ config/

ENV NODE_ENV production

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]