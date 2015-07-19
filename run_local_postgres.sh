#!/bin/bash

docker run --rm --name testapp-postgres -p 9876:5432 -e POSTGRES_PASSWORD=postgres postgres
