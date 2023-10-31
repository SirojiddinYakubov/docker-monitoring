#!/usr/bin/make

base-build:
	docker compose -f base/docker-compose.yaml build
base-up:
	docker compose -f base/docker-compose.yaml up -d --build
base-down:
	docker compose -f base/docker-compose.yaml down
node-build:
	docker compose -f node/docker-compose.yaml build
node-up:
	docker compose -f node/docker-compose.yaml up -d --build
node-down:
	docker compose -f node/docker-compose.yaml down