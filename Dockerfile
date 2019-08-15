#dockerfile for the application

FROM ubuntu:18.04

RUN apt-get update \
        && apt-get install -y \
        pip, python

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python", "run.py" ]
