FROM node:10.14.1

WORKDIR /app

RUN npm install -g gulp

RUN mkdir -p /tmp/.cache
RUN chmod -R 777 /tmp/.cache
RUN npm config set cache /tmp/.cache --global

CMD ["sh"]
