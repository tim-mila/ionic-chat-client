#FROM node:8.7.0

# Create app directory
#WORKDIR /usr/src/app

# Install app dependencies
# For npm@5 or later, copy package-lock.json as well
#COPY ./package.json ./package.json
#COPY ./package-lock.json ./package-lock.json
#COPY ./stencil.config.js ./stencil.config.js
#COPY ./tsconfig.json ./tsconfig.json
#COPY ./tslint.json ./tslint.json
#COPY ./src ./src

#RUN npm install
#RUN npm run build

FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY ./www /usr/share/nginx/html
EXPOSE 80
