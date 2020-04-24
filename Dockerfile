FROM alpine as node-build

RUN apk add --update nodejs nodejs-npm bash git && \
        rm -rf /var/cache/apk/*

COPY . ./app
WORKDIR /app
RUN ls -lah
RUN npm install && npm install -g @angular/cli
