[![PHP version](https://img.shields.io/packagist/php-v/symfony/symfony)](https://symfony.com/download)

# Limehome Task: Symfony/PHP API

This is a Symfony API Platform project.

You can find a live link on Heroku:
https://limehome-api-php.herokuapp.com/

OpenAPI link:
https://limehome-api-php.herokuapp.com/api

## Requirements
    - PHP 8.0.2 Or above.
    - MySQL
## Getting Started
### 1. Clone the project:
```bash
# Clone this repository
$ git clone https://github.com/aassou/limehome-api-php

# Go into the repository
$ cd limehome-api-php

```

### 2. Install the dependencies:
Install dependencies using composer

```bash
$ composer install
```

### 3. Create env file:

Create an env file with the name ".env.local" and copy the content of ".env" to it.
Then in your .env.local file change the database credentials with your ones:
<br />
```bash
mysql://username:password@127.0.0.1:3306/database_name?serverVersion=5.7
```

###4. Database creation:

Create the database by running the next command:

```bash
$ php bin/console doctrine:database:create
```

### 5. Create and Run Migrations:
```bash
# Create migration
$ php bin/console make:migration

# Run migration
$ php bin/console doctrine:migrations:migrate

### 6. Load some data 
You can load some data using fixtures or use the sql file attached to the project
```bash
# Using Fixtures
$ php bin/console hautelook:fixtures:load

# Using database_schema
Please dump the database schema and data in file database_schema.sql


```
### 7. Start the server:

```bash
$ symfony serve
```

#Testing with Codeception:

This section shows some tests with Codeception, like Unit, Functional and Acceptance tests.

## 1. Getting started:
To run all your test suites with Codeception you can use the next command 
(depends on how you installed Codeception, by Composer or by using the .phar file):

```bash
php codecept.phar run --steps
```
Or 
```bash
php vendor/bin/codecept run --steps
```

You can also generate HTML report by adding --html argument:
```bash
php codecept.phar run --steps --html
```

As well as generating JUnit XML reports by adding --xml argument:
```bash
php codecept.phar run --steps --xml
```

## 2. Acceptance Tests:
Acceptance test could be defined differently from context to other, but we are here talking
about web context, so an acceptance test is a test which tests the functional part of a user
story and checks all the iterations of that story in order to give a green flag and accept it.

Codeception, as mentioned, provides the necessary environment to start write your acceptance tests.
You can check ***tests/acceptance*** folder to have an idea about these kind of tests.

### FYI: What are regression tests:
According to Wikipedia, regression tests is the action of re-running all the functional 
and non-functional tests after any change, to check if everything is working fine as it 
is supposed to be.

## 3. Functional Tests:
Functional tests are similar to acceptance tests, except that a functional test doesn't require 
a web server.
