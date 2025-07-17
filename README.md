# Docker+PostgreSQL+Barman


* start containers

```
docker compose up
```

* exec into the barman container

```
docker compose exec barman bash
```

* run a backup

```
barman backup plakar --immediate-checkpoint
```

* list backups

```
barman list-backups plakar
```
