FROM node:8-alpine

LABEL maintainer="Jesus Rivera <dani882@gmail.com>"

# Users endpoint Env variables
ARG DEVOPS_TEST_DATABASE_NAME
ARG DEVOPS_TEST_DATABASE_USERNAME
ARG DEVOPS_TEST_DATABASE_PASSWORD
ARG DEVOPS_TEST_DATABASE_HOST

ENV DEVOPS_TEST_DATABASE_NAME="${DEVOPS_TEST_DATABASE_NAME}"
ENV DEVOPS_TEST_DATABASE_USERNAME="${DEVOPS_TEST_DATABASE_USERNAME}"
ENV DEVOPS_TEST_DATABASE_PASSWORD="${DEVOPS_TEST_DATABASE_PASSWORD}"
ENV DEVOPS_TEST_DATABASE_HOST="${DEVOPS_TEST_DATABASE_HOST}"

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY users/package*.json /usr/src/app/

# Create app directory
WORKDIR /usr/src/app

RUN npm install && npm install babel-preset-env
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY users/. .
EXPOSE 3081
CMD ["npm", "start"]
