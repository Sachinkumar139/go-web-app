FROM golang:1.22 as base

WORKDIR /app

COPY go.mod ./

RUN go mod download
LABEL version="1.0"
COPY . .

RUN go build -o main .

EXPOSE 8080

CMD ["./main"]
