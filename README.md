# Online Learning Platform Rest APIs

Sample CRUD Rest Api developed using Rails and JSONAPI::Resources.

![elearnio drawio](https://user-images.githubusercontent.com/7689116/208054746-299b7cf1-28b9-4d5e-86ed-201dcf87c363.svg)


# Index
* [How to Install and Run this Project in your local without Docker](#How-to-Install-and-Run-this-Project-in-your-local-Without-Docker)
* [How to Install and Run this Project in your local with Docker](#How-to-Install-and-Run-this-Project-in-your-local-With-Docker)
* [Testing the CRUD API using Postman collection](#How-to-test-CRUD-API-Using-Postman-Collection)

* [Running the spec](#How-to-run-spec)


## Prerequisites
- [PostgreSQL](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos)


## How-to-Install-and-Run-this-Project-in-your-local-Without-Docker

* Download from github
```bash
git clone https://github.com/vedsingh-fullstack/online-courses.git
```
* Navigate into the repository
```bash
 cd online-courses
```
* Bundle

```bash
bundle install
```

* database setup

Configure a postgres database before running the backend

```sh
brew install postgresql@14
```
Your Postgres server should ideally run as a service on your machine, in order
to have it running after system start:
```sh
brew services start postgresql@14
```

After cloning application repository and installing app you will have two additional databases: online_course_test and online_course_development
For these databases you will need to create new user so connection will be possible:
```sh
psql postgres
```
```sql
CREATE ROLE testuser WITH SUPERUSER;
ALTER ROLE testuser WITH LOGIN;
ALTER ROLE testuser WITH PASSWORD 'admin@123';
```

Run the migrate and seeds rake
 ```sh
rails db:create db:migrate db:seeds
```

* Start the server
 ```sh
rails s
```

## How-to-Install-and-Run-this-Project-in-your-local-Without-Docker

```sh
docker-compose build

docker-compose run web rails db:reset db:migrate db:seed

docker-compose up

```
## How-to-test-CRUD-API-Using-Postman-Collection

* Using Postman link

Open Postman and navigate to import and click on link and paste below link

 ```sh
https://www.getpostman.com/collections/e2bfe26607b514593892
```

## How-to-run-spec
 ```sh
 rspec --format documentation
 ```

