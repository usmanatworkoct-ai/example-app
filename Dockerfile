FROM node

# (optional) demo env vars like in Nana's video
ENV MONGO_INITDB_ROOT_USERNAME=admin \
    MONGO_INITDB_ROOT_PWD=password

# create application directory inside the container
RUN mkdir -p /home/app

# copy the Node.js app (the "app" folder from this project)
COPY ./app /home/app

# set working directory
WORKDIR /home/app

# install dependencies
RUN npm install

# start the node server
CMD ["node", "server.js"]
