.PHONY: up down docker_clean_all


# General worflow
## Start all Docker containers
up:
	docker compose up -d --build

## Stop and remove all Docker containers and volumes defined in docker compose
down:
	docker compose down -v

## Full Docker cleanup
docker_clean_all:
	docker stop $$(docker ps -aq) 2>/dev/null || true && \
	docker rm -f $$(docker ps -aq) 2>/dev/null || true && \
	docker rmi -f $$(docker images -q) 2>/dev/null || true && \
	docker volume rm $$(docker volume ls -q) 2>/dev/null || true && \
	docker network rm $$(docker network ls -q | grep -v "bridge\|host\|none") 2>/dev/null || true && \
	docker system prune -a --volumes -f


# Services
## env-workbench
### Start the service
ew_start:
	docker compose up -d --build env-workbench_service

### Down the service
ew_down:
	docker compose stop env-workbench_service

### Restart the service
ew_restart:
	docker compose up -d --build env-workbench_service

### Show service's logs
ew_logs:
	docker compose logs env-workbench_service

### Open an interactive bash shell
ew_bash:
	docker exec -it env-workbench_container sh






