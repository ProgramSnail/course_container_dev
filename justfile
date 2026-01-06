container := "course_container_dev_devcontainer_1"

help:
  just -l

# lang: python, ocanren or haskell
commit PROJ TASK_ID: up
  docker exec -it {{container}} fish -c "just {{PROJ}}/test {{TASK_ID}}"
  git add {{PROJ}}/task{{TASK_ID}}
  git commit -m "submit {{PROJ}}: task {{TASK_ID}}"

commit_local PROJ TASK_ID:
  just {{PROJ}}/test {{TASK_ID}}
  git add {{PROJ}}/task{{TASK_ID}}
  git commit -m "submit {{PROJ}}: task {{TASK_ID}}"

push:
  git push

pull:
  git pull --rebase

enter: up
  docker exec -it {{container}} fish
  # TODO: name?

up:
  docker compose up -d

down:
  docker compose down

pod_ssh:
  ssh -t coursecontainerdev.devpod "cd /workspaces/coursecontainerdev ; fish --login"
