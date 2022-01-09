FROM python:3.7-alpine
LABEL maintainer="Emilzon Jeronimo" \
    description="A simple python web server" \
    version="1.0"

ENV PYTHONONUNBUFFERED 1

COPY ./requeriments.txt /requeriments.txt
RUN pip install -r /requeriments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
