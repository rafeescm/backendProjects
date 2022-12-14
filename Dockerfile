# syntax=docker/dockerfile:1
FROM python:3.8-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN mkdir /code
WORKDIR /code
COPY . /code/


COPY requirements.txt /code/
RUN pip install -r requirements.txt
