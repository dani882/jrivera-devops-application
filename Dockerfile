FROM node:8-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install babel-preset-en && npm ci --only=production 

# Bundle app source
COPY . .
EXPOSE 3081
CMD ["npm", "start"]
