PROJECT_NAME=hospital-service

.PHONY: help run tidy

help:
	@echo "Usage:"
	@echo " make <target>"
	@echo ""
	@echo "Targets:"
	@echo "  tidy          Format the code, vendor, and tidy the Go modules"
	@echo "  run           Run the Go application locally without Docker."

tidy:
	go fmt ./...
	go mod tidy
	go mod vendor

run:
	go run ./cmd/server/main.go

include .env
export

