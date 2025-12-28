SHELL=/bin/bash
CONTAINER=course_container_dev_devcontainer_1

help:
	echo "options:"
	echo "  - PROJ=... TASK_ID=... make commit"
	echo "  - PROJ=... TASK_ID=... make commit_local"
	echo "  - make push"
	echo "  - make pull"
	echo "  - make enter"
	echo "  - make up"
	echo "  - make down"


# lang: python, ocanren or haskell
commit: up
	docker exec -it $(CONTAINER) fish -c "just $(PROJ)/test $(TASK_ID)"
	git add $(PROJ)/$(TASK_ID)
	git commit -m "submit $(PROJ): task $(TASK_ID)"

commit_local:
	just $(PROJ)/test $(TASK_ID)
	git add $(PROJ)/task/$(TASK)
	git commit -m "submit $(PROJ): task $(TASK_ID)"

push:
	git push

pull:
	git pull --rebase

enter: up
	docker exec -it $(CONTAINER) fish
	# TODO: name?

up:
	docker compose up -d

down:
	docker compose down
