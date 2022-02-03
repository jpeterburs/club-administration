# club administration

## setup

```shell
$ docker compose build

$ docker compose up

# when setting up for the first time:
$ docker compose run --rm app bin/rails db:create db:migrate

# to acces the console
$ docker compose run --rm app bin/rails console
```
