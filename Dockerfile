FROM alpine:3.14

RUN apk add python3
RUN apk add texlive-full
RUN apk add bash

RUN python3 -m ensurepip --upgrade

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app.py .

COPY build.sh .

COPY latex-source/resume.tex .
COPY latex-source/sidebar.tex .
COPY latex-source/altacv.cls .

RUN ./build.sh

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
