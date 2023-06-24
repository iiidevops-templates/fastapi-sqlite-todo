FROM dockerhub/library/python:3.8

RIN pip install --upgrade pip
RUN pip install "uvicorn[standard]"
RUN pip install fastapi python-multipart sqlalchemy jinja2

COPY app /app
WORKDIR /app

EXPOSE 8000
CMD uvicorn app:app --reload
