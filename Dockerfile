FROM ubuntu:22.04

# Updating the machine
RUN apt update

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN apt install npm -y

RUN apt install nginx -y

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
