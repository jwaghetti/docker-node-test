# which image to base the container
FROM i686/nodejs:latest

# creates the app directory and goes there
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# configuration of the project
COPY package.json /usr/src/app

# node package manager
RUN npm install

# copying all file to app
COPY . /usr/src/app

# exposes port 8080
EXPOSE 8080

# the command to run the application
CMD [ "npm", "start" ]
