#dockerfile for the application

FROM ubuntu:18.04

RUN apt-get update \
        && apt-get install -y \
        python python-pip build-essential

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "run.py" ]
