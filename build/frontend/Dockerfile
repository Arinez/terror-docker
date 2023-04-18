FROM node:lts-alpine3.13

RUN npm install -g http-server @vue/cli
RUN apk update
RUN apk add git openssh

WORKDIR /app

RUN mkdir /root/.ssh
COPY config/ssh /root/.ssh
RUN chmod 600 /root/.ssh/id_rsa

ENV ENV="/etc/profile"
RUN echo "alias ll='ls -lah --color'"  >> "$ENV"

EXPOSE 8080
EXPOSE 5173
CMD [ "http-server", "dist" ]