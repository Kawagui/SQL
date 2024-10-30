#!/bin/bash
docker run --rm -d --name workshop-ssi \
	-p 5432:5432 \
	-e POSTGRES_PASSWORD=Çá5 \
	-e PGDATA=/var/lib/postgresql/data/pgdata \
	-v $PWD/dados:/var/lib/postgresql/data \
	-v $PWD/init_db.sql:/docker-entrypoint-initdb.d/init_db.sql \
	postgres:16
