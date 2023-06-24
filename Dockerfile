FROM dockerhub/library/python:3.9

RUN pip install fastapi uvicorn python-multipart sqlalchemy jinja2 --nothreads

COPY app /app
WORKDIR /app

EXPOSE 8000
CMD uvicorn app:app --reload