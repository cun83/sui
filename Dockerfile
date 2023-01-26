FROM golang:alpine as builder
LABEL maintainer="Will Fantom <willfantom@gmail.com>"
RUN apk add --no-cache git
COPY ./go.mod /app/go.mod
WORKDIR /app

RUN go mod download

#RUN go mod tidy
#RUN go mod download github.com/containous/traefik/v2@v2.2.1
#RUN go mod download

#RUN go mod download github.com/containous/traefik/v2

COPY . /app/
WORKDIR /app

#RUN go mod download github.com/containous/traefik/v2
RUN go get github.com/willfantom/sui/providers
RUN CGO_ENABLED=0 go build -o sui .

FROM scratch
COPY ./templates /app/templates
COPY ./assets /app/assets
COPY --from=builder /app/sui /app/
WORKDIR /app
ENTRYPOINT [ "./sui" ]