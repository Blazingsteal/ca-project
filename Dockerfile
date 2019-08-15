#dockerfile for the application

FROM circleci/python

COPY requirements.txt .

RUN pip install --user -r requirements.txt
COPY . .

ENTRYPOINT [ "python", "run.py" ]
