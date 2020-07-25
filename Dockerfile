FROM node:12
ARG NODE_ENV
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package.json yarn.lock ./
RUN yarn install
COPY .next .

EXPOSE 3000
CMD ["next", "start"]