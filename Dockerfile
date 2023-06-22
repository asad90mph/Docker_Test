FROM python:3.8
ENV PYTHONUNBUFFERED 1

RUN mkdir /docker_test
WORKDIR /docker_test
ADD . /docker_test/
RUN apt update && apt-get install -y supervisor
RUN pip install -r requirements.txt
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
