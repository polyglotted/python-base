FROM python:2.7.11-alpine
MAINTAINER PG Developer <pgtdev@polyglotted.io>

RUN apk add --no-cache --virtual=build_dependencies musl-dev gcc python-dev make cmake g++ gfortran && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h && \
    pip install -r requirements.txt --no-cache-dir
