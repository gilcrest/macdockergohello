FROM arm64v8/golang:latest

# Create and change to the /usr/src/app directory.
WORKDIR /usr/src/app

# copy go.mod and go.sum files to the workspace
COPY go.mod go.sum ./

# Retrieve application dependencies.
# This allows the container build to reuse cached dependencies.
RUN go mod download && go mod verify

# Copy the local code files and directories to the container's workspace
# in the above created WORKDIR
COPY . .

RUN go build -v -o /usr/local/bin/app ./cmd/macdockergohello/main.go

ENTRYPOINT ["app"]
