FROM node:18.16.0

WORKDIR /app

RUN npm install -g gulp
RUN npm install -g node-gyp
RUN npm install -g typescript

RUN mkdir -p /tmp/.cache
RUN chmod -R 777 /tmp/.cache
RUN npm config set cache /tmp/.cache --global

CMD ["sh"]