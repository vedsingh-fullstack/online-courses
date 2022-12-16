# Online Learning Platform Rest APIs

Sample CRUD Rest Api developed using Rails and JSONAPI::Resources.

# Index
* [How to Install and Run this Project in your local](#How-to-Install-and-Run-this-Project-in-your-local(Without Docker))

* [Testing the CRUD API using Postman collection](#How-to-test-CRUD-API-Using-Postman-Collection)


## Prerequisites
- [PostgreSQL](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos)


## How-to-Install-and-Run-this-Project-in-your-local(Without Docker)

* Download from github
    ```bash
        
    ```
* Navigate into the repository
    ```bash
        
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

## How-to-test-CRUD-API-Using-Postman-Collection

* Using Postman link

Open Postman and navigate to import and click on link and paste below link

 ```sh
https://www.getpostman.com/collections/e2bfe26607b514593892
```