FROM node:18-alpine

# Create api directory
WORKDIR /usr/src/api

# Install api dependencies
COPY package.json ./

# RUN npm install
RUN npm install --omit=dev

RUN npm install nodemon -g

# Bundle api source
COPY ./dist ./dist/

ARG api_PORT=5000
EXPOSE ${API_PORT}

CMD [ "npm", "start" ]