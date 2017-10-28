FROM starefossen/ruby-node:2-8-alpine

RUN apk add --no-cache git
RUN apk add --no-cache build-base