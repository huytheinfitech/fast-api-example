FROM python:3

RUN apt update &&\
  apt install -y pip git 

RUN mkdir -p /home/app/ &&\
  mkdir /home/data &&\
  mkdir /home/src

# Install tools
RUN pip install fastapi uvicorn[standard] python-multipart aiofiles databases aiosqlite sqlalchemy==1.4.41

# Copy files
WORKDIR /home/app
COPY . ./

ENTRYPOINT /bin/sh -c
CMD uvicorn server:app --host 0.0.0.0

EXPOSE 5000