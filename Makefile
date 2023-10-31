#!/usr/bin/make

help:
	@echo "make"
	@echo "	node-up"
	@echo "		ADMIN_USER=admin ADMIN_PASSWORD=admin ADMIN_PASSWORD_HASH='$2a$14$1l.IozJx7xQRVmlkEQ32OeEEfP5mRxTpbDTCTcXRqn19gXD8YK1pO' docker compose -f node/docker-compose.yaml up -d --build or export environment variables and run: docker compose -f node/docker-compose.yaml up -d --build"


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
change-pass:
	sed -i "s|ADMIN_USER|${ADMIN_USER}|g" base/prometheus/prometheus.yml && sed -i "s|ADMIN_PASSWORD|${ADMIN_PASSWORD}|g" base/prometheus/prometheus.yml
change-pass-mac:
	sed -i '' -e "s|ADMIN_USER|${ADMIN_USER}|g" base/prometheus/prometheus.yml && sed -i '' -e "s|ADMIN_PASSWORD|${ADMIN_PASSWORD}|g" base/prometheus/prometheus.yml