FROM node:14-alpine

WORKDIR /usr/src/app

COPY . ./
RUN yarn
RUN build
EXPOSE 5333
ENV HOST=0.0.0.0
ENV PORT=5333

CMD [ "yarn", "start" ]