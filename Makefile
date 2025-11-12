# Declare phony targets (not actual files)
.PHONY: up down bash

# Start the Docker environment in detached mode
up:
	docker compose up -d

# Stop and remove the Docker containers and their volumes
down:
	docker compose down -v

# Access the running container's bash shell (replace name if container differs)
bash:
	docker exec -it env-workbench_container bash








