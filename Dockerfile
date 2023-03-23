FROM node:18.15.0

WORKDIR /app

RUN apt update && apt install -y python2
RUN npm install -g gulp
RUN npm install -g node-gyp

CMD ["sh"]