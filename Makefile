.PHONY: build-prod start-prod stop-prod build start stop help
# Load environment variables
include .env
export

# Production
build-prod:
	docker build -t $(PROJECT_NAME) .

start-prod:
	docker run -d -p $(PORT):$(PORT) --env-file .env --name $(PROJECT_NAME) $(PROJECT_NAME)

stop-prod:
	docker stop $(PROJECT_NAME) && docker rm $(PROJECT_NAME)

# Tasks
build:
	docker-compose -p $(PROJECT_NAME) build

start:
	docker-compose up -d

stop:
	docker-compose down

# Help
help:
	@echo "Usage instructions:"
	@echo "  make build-prod     - Build the [Production] Docker containers"
	@echo "  make start-prod     - Start the [Production] Docker containers"
	@echo "  make stop-prod      - Stop the [Production] Docker containers"
	@echo "  make build          - Build the Docker containers"
	@echo "  make start          - Start the Docker containers"
	@echo "  make stop           - Stop the Docker containers"
	@echo "  make help           - Show this help message"