FROM dockerhub/library/python:3.8

RUN pip install fastapi "uvicorn[standard]" python-multipart sqlalchemy jinja2

COPY app /app
WORKDIR /app

EXPOSE 8000
CMD uvicorn app:app --reload
