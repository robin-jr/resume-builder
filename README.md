# Flexiple Assignment

## Tech stack for this app

- RoR
- PostgreSQL
- tailwindcss

## Setup

Run following command to create first user after migrating database.

```
rake db:seed
```

Email: `johndoe@example.com`
Password: `password`


## Get started with Docker

Run 
```
docker-compose up
```
after that in another terminal, run
```
docker-compose run web rake db:create
```
Also you'll have to run the rails migration command
