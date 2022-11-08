FROM python:3.8

RUN apt update -y
RUN apt install libmariadb3 libmariadb-dev sqlite3 libsqlite3-dev -y

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app

EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "run.py" ]
