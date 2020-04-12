# Stage 1 - Build binary
FROM golang:1.14-alpine AS buildenv

# Copy files
COPY go.mod /go/src/github.com/istherepie/cdnagent/
COPY go.sum /go/src/github.com/istherepie/cdnagent/
COPY main.go /go/src/github.com/istherepie/cdnagent/
COPY service /go/src/github.com/istherepie/cdnagent/service

# Set workdir
WORKDIR /go/src/github.com/istherepie/cdnagent

# Install deps
RUN go get ./...

# Build cdnagent binary
RUN go install


# Stage 2 - Build application container
FROM alpine:latest as distribution

# Fetch binary
COPY --from=buildenv /go/src/bin/cdnagent /app/cdnagent

# No entrypoint yet
ENTRYPOINT []

# Run
CMD ["/app/cdnagent"]
