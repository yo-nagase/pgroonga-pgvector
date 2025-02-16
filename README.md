# Pgroonga and pgvector 



## version
- postgres: 15.1
- pgroonga: 4.0.0
- pgvector: 0.8.0


## build

```bash
docker-compose build
```

## image retrieve

## run 

```bash
docker-compose up -d
```
or

```
docker run -d --name pgroonga-pgvector-test -p 5432:5432 -e POSTGRES_PASSWORD=postgres POSTGRES_DB=mydatabase -e POSTGRES_USER=postgres pgroonga-pgvector-test
```
make sure you need to set `POSTGRES_PASSWORD` `POSTGRES_DB` `POSTGRES_USER` when you run the container





