enter: up
  docker exec -it course_container_dev_devcontainer_1 fish
  # TODO: name?

help:
  just -l

# lang: python, ocanren or haskell
commit LANG TASK_ID: up
  docker exec -it course_container_dev_devcontainer_1 fish -c "just {{LANG}}/test {{TASK_ID}}"
  git add {{LANG}}/task{{TASK_ID}}
  git commit -m "submit {{LANG}}: task {{TASK_ID}}"

push:
  git push

pull:
  git pull --rebase

up:
  docker compose up -d

down:
  docker compose down
