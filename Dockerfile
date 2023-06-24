FROM dockerhub/library/python:3.9

RUN pip install fastapi
RUN pip install uvicorn python-multipart sqlalchemy jinja2

COPY app /app
WORKDIR /app

EXPOSE 8000
CMD uvicorn app:app --reload