#dockerfile for the application

FROM circleci/python

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "run.py" ]
