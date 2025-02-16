# Pgroonga and pgvector 

This repository is a docker image that has pgroonga and pgvector installed.

## docker image
You can pull the docker image from the following link.
https://github.com/yo-nagase/pgroonga-pgvector/pkgs/container/pgroonga-pgvector

## Characteristics
- pgroonga and pgvector are installed.
- This image can be used both arm64 and amd64.
- Extension is installed in the initialization script.



You don't need to execute the following command because the docker image has already installed pgroonga and pgvector.

```sql
CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS pgroonga;
```

## version
- postgres: 15.1
- pgroonga: 4.0.0
- pgvector: 0.8.0


## retrieve docker image

```bash
docker pull ghcr.io/yo-nagase/pgroonga-pgvector:latest
```

## run image 

```bash
docker run -p 1111:5432 -e POSTGRES_PASSWORD=your_password -e POSTGRES_DB=postgres -e POSTGRES_USER=postgres ghcr.io/yo-nagase/pgroonga-pgvector:latest 

```


## build

```bash
docker-compose build
```


## run 

```bash
docker-compose up -d
```

or

```
docker run -d --name pgroonga-pgvector-test -p 5432:5432 -e POSTGRES_PASSWORD=postgres POSTGRES_DB=mydatabase -e POSTGRES_USER=postgres pgroonga-pgvector-test
```

 >make sure you need to set `POSTGRES_PASSWORD` `POSTGRES_DB` `POSTGRES_USER` when you run the container




