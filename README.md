# README
[![Build Status](https://travis-ci.org/borey/docker-rails.svg?branch=master)](https://travis-ci.org/borey/docker-rails)
![](https://github.com/borey/docker-rails/workflows/Docker/badge.svg)

A project to test setup rails project using docker container

## Intergrated services & functions
- ElasticSearch
- Kibana
- Devise

## Docker development


```docker-compose.yml``` file build a development environment mounting the current folder and running rails in development environment.

App configuration are stored in ```docker-env```. Please check sample config in ```docker-env.example```.

Start project with docker-compose:

```
docker-compose up
```

Run migration & seed data

```
docker-compose run --rm web rake db:setup
```

Install latest JS dependency

```
docker-compose run --rm web yarn install --check-files
```

#### Run test with spring


First start spring server

```
docker-compose run --name=spring --rm web bundle exec spring server
```

Run rspec

```
docker exec -it spring rspec
```
