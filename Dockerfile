FROM python:3.8-slim-buster

WORKDIR /src

COPY src/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN mkdir /app
WORKDIR /app
COPY src/app.py /app

ENV FLASK_APP=app.py

CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]
