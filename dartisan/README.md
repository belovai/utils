# dartisan

A simple shell alias to run Laravel Artisan commands inside a Docker container using `docker-compose`.

## Alias definition

```bash
alias dartisan='docker-compose exec app php artisan'
```

## Usage

Instead of typing:

```bash
docker-compose exec app php artisan migrate
```

you can just run:

```bash
dartisan migrate
```

## Assumptions

This alias assumes:

* Your Laravel project is running in a container named `app`

If your container has a different name or you use another setup, you can modify the alias accordingly.

---

Quick access to Artisan in any Laravel + Docker project. ⚙️
