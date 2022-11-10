FROM golang:1.16-alpine

# creates working directory inside the image we are building
WORKDIR /app

COPY go.mod ./
COPY go.sum ./

# modules will be installed into a directory inside the image
RUN go mod download

# copy source code onto the image
COPY *.go ./

# compile application
RUN go build -o /hello

EXPOSE 8080

# command to execute when image is used to start a container

CMD ["/hello"]

# docker run -it <image name> /bin/sh to open shell prompt

# to publish a port for a container docker run --publish 8080:8080 <image name>