# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python_docker

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "-m" ,"app.py", "flask", "run", "--host=0.0.0.0"]