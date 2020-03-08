# FAB base container

FlaskAppBuilder Framework (https://github.com/dpgaspar/Flask-AppBuilder) base container, intended to be used with a FAB app in *./app/*.
Mounts *./app/* in */app/* inside the container, and runs the FAB app using gunicorn within the container

## Building

Build with:

    docker-compose build

## Instantiating a clean FAB app

Create the app dir

    mkdir ./app

To init a fab app in ./app using the container:

    docker-compose run fab bash

## Running


Run with: 

    docker-compose up


## Testing: 

Browse to http://localhost:8080/

