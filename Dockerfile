FROM daocloud.io/library/node:6.11.3-slim

MAINTAINER congyuandong <congyuandong@gmail.com>

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

WORKDIR /app

COPY . /app/

EXPOSE 8000

RUN cnpm install \
	&& cnpm install sails -g

CMD ["sails", "lift", "--prod"]
