# docker build --rm -f "dockerfile" -t "potree:latest" "."
# docker run --rm -it potree:latest
FROM node:24-alpine

RUN apk update && apk add --no-cache \
    git && \
    rm -rf /var/cache/apk/*

WORKDIR /potree
COPY . .
RUN npm install