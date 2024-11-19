# Install necessary tools for protobuf compilation
GO_MODULE ?= $(shell go env GOPATH)
PROTO_DIRS := Auth User

init:
	@echo "Initializing environment..."
	@export PATH=$PATH:$HOME/go/bin

install-tools:
	@echo "Installing necessary tools..."
	@go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	@go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	@echo "Tools installed successfully."

generate-proto:
	@echo "Generating gRPC code from proto files..."
	@for dir in $(PROTO_DIRS); do \
		protoc -I=. \
			--go_out=$$dir \
			--go-grpc_out=$$dir \
			$$dir/*.proto; \
		echo "Generated proto for $$dir service"; \
	done

tidy:
	@go mod tidy

all: init install-tools generate-proto tidy

.PHONY: init install-tools generate-proto tidy all