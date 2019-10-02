FROM python:3.5.7-stretch

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["app.py"]
