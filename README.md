# Репозиторий

## Зависимости

- `docker` или `podman` + `podman-docker`
- `docker compose` или `podman-compose` (вариант установки 3)
- `make` или `just`

На Linux (Arch, Fedora, Ubuntu) зависимости можно установить командой
`cd setup && make prepare_container` или `cd setup && just prepare_container`.

Mac *TODO*

Windows *TODO*

## Установка

Возможны 4 варианта установки необходимого окружения.
Рекомендуется использовать вариант 1.

1. **В редакторе VSCode**

- Установите расширениe `Dev Containers`:

https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

- Запустите окружение в этом репозитории:

https://code.visualstudio.com/docs/devcontainers/containers

2. **Через редакторы VSCodium (DevPod), Intellij IDEA, Zed (preview)**

2.1. VSCodium

2.1.1. Установка DevPod

https://devpod.sh/docs/getting-started/install

- Работа в GUI: См. https://devpod.sh/docs

- Работа в CLI: 

`devpod provider add docker` - инициализация

`devpod up .` - запуск контейнера

2.1.2. Установка расширений

Установите расширения

- https://open-vsx.org/extension/jeanp413/open-remote-ssh

- https://open-vsx.org/extension/3timeslazy/vscodium-devpodcontainers

2.2. Intellij IDEA

https://www.jetbrains.com/help/idea/start-dev-container-inside-ide.html

2.3. Zed Editor

https://zed.dev/docs/dev-containers

3. **С помощью Docker Compose**

- `make up` или `just up` - запуск контейнера
- `make down` или `just down` - остановка контейнера
- `make enter` или `just enter` - вход в контейнер

Репозиторий примонтирован в контейнер, операции с git
рекомендуется делать с host-устройства:

- `PROJ=project TASK_ID=X make commit` или `just commit project X`
- `make push` или `just push`

---

Mожно использовать редакторы внутри контейнера или подключить внешние контейнеры вручную

- https://code.visualstudio.com/docs/devcontainers/attach-container

- https://www.jetbrains.com/help/idea/docker-containers.html

4. (не рекомендуется) Установка окружения без контейнера (с использованием ansible)
Поддерживаются только Arch и Fedora

- `cd setup && make prepare_manual && make install` или `cd setup && just prepare_manual && just install`

## Тестирование

Работа с репозиторием внутри контейнера (из корневого каталога репозитория):

1. **Python**

- `just python/run X` - запуск задачи X
- `just python/test X` - тестирование задачи X

2. **Haskell**

- `just haskell/build` - сборка всего окружения
- `just haskell/test X` - тестирование задачи X

3. **OCanren**

- Перед работой нужно инициализировать окружение: `eval $(opam env --switch=default)` (bash)  или `eval (opam env --switch=default)` (fish)

- `just ocanren/build X` - сборка задачи X
- `just ocanren/test X` - тестирование задачи X

