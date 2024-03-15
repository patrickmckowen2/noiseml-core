# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.12-slim

# Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./



# RUN apk add --no-cache --virtual .build-deps gcc postgresql-dev musl-dev python3-dev
# RUN apk add libpq

COPY requirements.txt /tmp/

# Install production dependencies.
#RUN pip install Flask gunicorn dash dash_player
RUN pip install -r /tmp/requirements.txt

# Run the web service on container startup. Here we use the gunicorn
# webserver, with one worker process and 8 threads.
# For environments with multiple CPU cores, increase the number of workers
# to be equal to the cores available.
#CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:server




# FROM python:3.8-alpine

# RUN apk add --no-cache --virtual .build-deps gcc postgresql-dev musl-dev python3-dev
# RUN apk add libpq

# COPY requirements.txt /tmp/


# RUN apk del --no-cache .build-deps

# RUN mkdir -p /src
# COPY src/ /src/
# RUN pip install -e /src
# COPY tests/ /tests/

# WORKDIR /src