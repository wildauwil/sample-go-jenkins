# stage 1
FROM golang:alpine as build
RUN apk update && apk add --no-cache git
WORKDIR /src
COPY . .
RUN go mod tidy
RUN go test ./... -cover
RUN go build -o sample-go-jenkins

# stage 2
FROM alpine
WORKDIR /app
COPY --from=build /src/sample-go-jenkins /app
# COPY --from=build /src/sample-go-jenkins-test /app
# CMD [ "/app/sample-go-jenkins-test" ]
ENTRYPOINT [ "/app/sample-go-jenkins" ]