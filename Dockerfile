FROM node:10.14.1

WORKDIR /app

RUN npm install -g gulp
RUN npm install -g node-gyp

CMD ["sh"]