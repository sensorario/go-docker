FROM golang:1.17-alpine
RUN mkdir -p /app/logs
ADD . /app
WORKDIR /app
RUN go get -d -v ./...
RUN go install -v ./...
RUN go build -o /application
EXPOSE 5000
RUN touch /app/logs/logger.log
CMD ["/application"]
