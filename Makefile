up:
	docker compose up
stop:
	docker compose stop
down:
	docker compose down --volumes --remove-orphans
build:
	docker build -t webnitros/teamcity-agent-docker-compose:latest .
push:
	docker login
	docker buildx create --use
	docker buildx build --platform linux/arm64,linux/amd64 -t webnitros/teamcity-agent-docker-compose:latest --push .

destroy-all:
	docker compose down --rmi all --volumes --remove-orphans


install:
	@make build
	@make up

remake:
	@make down
	@make install
