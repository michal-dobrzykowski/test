FROM node:14

WORKDIR /usr/src/app

COPY . ./
RUN npm

EXPOSE 3000

ENV HOST=0.0.0.0
ENV PORT=3000

RUN npm build

CMD [ "npm", "start" ]