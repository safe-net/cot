FROM python:2.7

RUN pip install cot

RUN apt-get update && apt-get install -y sudo

RUN cot -f install-helpers

ENTRYPOINT ["cot"]