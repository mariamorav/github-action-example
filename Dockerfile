FROM golang:1.18-alpine

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /github-action-example

ENV PORT=5050

EXPOSE 5050

CMD [ "/github-action-example" ]