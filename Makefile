lint:
	golangci-lint run -c ./golangci.yml ./...

test:
	go test ./... -v --cover

test-report:
	go test ./... -v --cover -coverprofile=coverage.out
	go tool cover -html=coverage.out

build:
	cd ui && npm run build
	cd examples/base && go build && mv base pocketbase && chmod +x pocketbase
