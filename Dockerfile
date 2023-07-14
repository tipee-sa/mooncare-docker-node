FROM node:18.16.0

WORKDIR /app

RUN apt update && apt install -y libc6

RUN npm install -g npm@9.8.0
RUN npm install -g gulp
RUN npm install -g node-gyp
RUN npm install -g typescript
RUN npm install -g nodemon

RUN mkdir -p /tmp/.cache
RUN chmod -R 777 /tmp/.cache
RUN npm config set cache /tmp/.cache --global

CMD ["sh"]