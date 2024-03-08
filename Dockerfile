FROM ubuntu
WORKDIR /usr/src/app
COPY . .
RUN apt-get update && \
    apt-get install golang -y
CMD ["go", "run", "hellogo.go"]