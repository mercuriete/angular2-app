FROM node
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

ARG BACKEND_URL
ENV BACKEND_URL $BACKEND_URL

COPY package.json /usr/src/app/
#COPY yarn.lock /usr/src/app/

#RUN npm install -g yarn@">=0.16.0"
RUN npm install

COPY . /usr/src/app

CMD ["npm", "install"]

EXPOSE 80

