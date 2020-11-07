#FROM python:3
FROM continuumio/anaconda3

COPY script.sh script.sh
#COPY requirements.txt requirements.txt

RUN pip install jupyter notebook -q
#RUN pip install -r requirements.txt

RUN mkdir /work

ENTRYPOINT /bin/bash script.sh

CMD tail -f /dev/null
