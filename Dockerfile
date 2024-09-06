FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

EXPOSE 8000

WORKDIR /drf-tutorial

# install requirements
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy source code
COPY . .
