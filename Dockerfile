FROM debian:buster-slim

WORKDIR /app
COPY . /app

RUN apt update
RUN apt install -y wget
RUN apt install -y unzip
RUN apt install -y git

RUN wget -O- https://get.pharo.org/64/90+vmI | bash

CMD ["./pharo", "--headless", "Pharo.image", "load.st", "--no-quit"]
