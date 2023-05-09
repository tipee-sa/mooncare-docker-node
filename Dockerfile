FROM node:18.16.0

WORKDIR /app

RUN npm install -g gulp
RUN npm install -g node-gyp
RUN npm install -g typescript

CMD ["sh"]