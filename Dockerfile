FROM python:3.7-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r ./requirements.txt

RUN mkdir /app && chown 1000.1000 /app

WORKDIR /app

EXPOSE 8080
USER 1000

ENV GUNICORN_CMD_ARGS="--bind=0.0.0.0 --chdir=/app"
CMD [ "gunicorn", "app:app" ]

