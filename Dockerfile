FROM python:3.8-rc-alpine

RUN mkdir /app
ADD ./server.py /app/

RUN pip install flask flask-restful

CMD python /app/server.py