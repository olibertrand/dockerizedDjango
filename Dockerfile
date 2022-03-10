FROM python:3.9.6-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip  &&\
    pip install django==3.2.6

COPY . .

EXPOSE 8081

CMD ["python", "manage.py", "runserver", "0.0.0.0:8081"]
