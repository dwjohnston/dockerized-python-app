#!/usr/bin/env bash

docker build -t pythontestapp . 
docker run -p  80:5002 pythontestapp
