FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# For npm@5 or later, copy package-lock.json as well
COPY ./package.json ./package.json
COPY ./package-lock.json ./package.json
COPY ./src ./src

RUN npm install
RUN npm run-script build

FROM nginx:latest
RUN rm -rf /etc/nginx
COPY ./conf /etc/nginx
EXPOSE 80 443
