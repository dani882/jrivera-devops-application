FROM node:8-alpine

LABEL maintainer="Jesus Rivera <dani882@gmail.com>"

# Files endpoint Env variables
ARG DEVOPS_TEST_BACKEND_AWS_USER_BUCKET_NAME
ARG DEVOPS_TEST_BACKEND_AWS_ACCESS_KEY
ARG DEVOPS_TEST_BACKEND_AWS_SECRET_KEY
ARG DEVOPS_TEST_BACKEND_AWS_PREFIX
ARG DEVOPS_TEST_BACKEND_AWS_REGION

ENV DEVOPS_TEST_BACKEND_AWS_USER_BUCKET_NAME="${DEVOPS_TEST_BACKEND_AWS_USER_BUCKET_NAME}"
ENV DEVOPS_TEST_BACKEND_AWS_ACCESS_KEY="${DEVOPS_TEST_BACKEND_AWS_ACCESS_KEY}"
ENV DEVOPS_TEST_BACKEND_AWS_SECRET_KEY="${DEVOPS_TEST_BACKEND_AWS_SECRET_KEY}"
ENV DEVOPS_TEST_BACKEND_AWS_PREFIX="${DEVOPS_TEST_BACKEND_AWS_PREFIX}"
ENV DEVOPS_TEST_BACKEND_AWS_REGION="${DEVOPS_TEST_BACKEND_AWS_REGION}"

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY files/package*.json /usr/src/app/

# Create app directory
WORKDIR /usr/src/app

RUN npm install && npm install babel-preset-env
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY files/. .
EXPOSE 3081
CMD ["npm", "start"]
