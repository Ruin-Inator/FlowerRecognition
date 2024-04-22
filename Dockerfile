FROM python:3.7.4

WORKDIR /app

COPY ./app /app

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "server.py"]
