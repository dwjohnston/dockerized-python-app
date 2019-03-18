#!/usr/bin/env bash
docker build -t pythontestapp . 

## Assuming you have already done heroku login

heroku container:login
heroku container:push web -a=$1
heroku container:release web -a=$1