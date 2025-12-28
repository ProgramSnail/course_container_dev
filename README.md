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

4 варианта установки:

1. **VSCode DevContainer *TODO***

Установка контейнеризированного окружения в VSCode

2. **DevPod: VSCodium, Intellij IDEA, Zed *TODO***

Настройка универсального контейнеризированного окружения

3. **Docker Compose**

Использование контейнера напрямую

- `make up` или `just up` - запуск контейнера
- `make down` или `just down` - остановка контейнера
- `make enter` или `just enter` - вход в контейнер

Репозиторий примонтирован в контейнер, операции с git
рекомендуется делать с host-устройства:

- `PROJ=project TASK_ID=X make commit` или `just commit project X`
- `make push` или `just push`

4. (не рекоммендуется) Установка окружения без контейнера (с использованием ansible)
Поддерживаются только Arch и Fedora

- `cd setup && make prepare_manual && make install` или `cd setup && just prepare_manual && just install`

## Тестирование

Работа с репозиторим внутри контейнера (из корневого каталога репозитория):

1. **Python**

- `just python/run X` - запуск задачи X
- `just python/test X` - тестирование задачи X

2. **Haskell**

- `just haskell/build` - сборка всего окружения
- `just haskell/test X` - тестирование задачи X

3. **OCanren**

- `just ocanren/build X` - сборка задачи X
- `just ocanren/test X` - тестирование задачи X

