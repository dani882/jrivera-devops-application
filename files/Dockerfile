FROM node:8-alpine
ENV DEVOPS_TEST_BACKEND_AWS_USER_BUCKET_NAME='jrivera-devops-test'
ENV DEVOPS_TEST_BACKEND_AWS_ACCESS_KEY='AKIAJ4AFMSQHLGJB2GIA'
ENV DEVOPS_TEST_BACKEND_AWS_SECRET_KEY='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'
ENV DEVOPS_TEST_BACKEND_AWS_PREFIX=''
ENV DEVOPS_TEST_BACKEND_AWS_REGION='us-east-1'

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install && npm install babel-preset-env
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
EXPOSE 3081
CMD ["npm", "start"]
