.PHONY: all

GO := go
GO_BUILD := $(GO) build
GO_INSTALL := $(GO) install
GO_TEST := $(GO) test

BUILD_DIR := $(shell pwd)/build
BUILD_NAME := $(BUILD_DIR)/firebase-admin

all: clean build
build:
	$(GO_BUILD) -o $(BUILD_NAME) ./cmd/main.go

test:
	$(GO_TEST) -cover ./...

clean:
	rm -rf $(BUILD_DIR)
	@echo "Cleaned $(BUILD_DIR)"


