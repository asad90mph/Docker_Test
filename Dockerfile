FROM python:3.8
ENV PYTHONUNBUFFERED 1

RUN mkdir /docker_app
WORKDIR /docker_app
ADD . /docker_app/
RUN apt update && apt-get install -y supervisor
RUN pip install -r requirements.txt