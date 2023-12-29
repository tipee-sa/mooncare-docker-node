FROM node:10.14.1

WORKDIR /app

ENV PYTHON_VERSION=2.7.5
RUN wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz \
  && tar --extract -f Python-$PYTHON_VERSION.tgz \
  && cd ./Python-$PYTHON_VERSION/ \
  && ./configure --enable-optimizations --prefix=/usr/local \
  && make && make install \
  && cd ../ \
  && rm -r ./Python-$PYTHON_VERSION*

RUN npm install -g gulp
RUN npm install -g nodemon

RUN mkdir -p /tmp/.cache
RUN chmod -R 777 /tmp/.cache
RUN npm config set cache /tmp/.cache --global

CMD ["sh"]
