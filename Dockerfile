FROM alpine AS builder
LABEL stage=website_builder

RUN  \
    apk update && \
    apk upgrade && \
    apk add npm && \
    apk add hugo && \
    apk add git && \
    mkdir /application

COPY . /application/

WORKDIR /application

RUN hugo


FROM nginx:alpine-slim

COPY --from=builder /application/public /usr/share/nginx/html

COPY nginx/default.template /etc/nginx/conf.d/default.template

CMD envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'