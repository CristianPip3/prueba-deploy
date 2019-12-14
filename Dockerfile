# base image
FROM node:12.2.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install -g
RUN npm install @vue/cli -g
RUN npm install -g @vue/cli-service-global
RUN npm update -g @vue/cli
RUN npm install
RUN npm update -g @vue/cli


# start app
CMD ["npm", "run", "serve"]
