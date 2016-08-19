#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "1111",
      "password": "7777",
      "password_confirmation": "7777"
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "another@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'

  curl --include --request POST http://localhost:3000/sign-up \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "7777",
        "password": "7777",
        "password_confirmation": "7777"
      }
    }'
    curl --include --request POST http://localhost:3000/sign-up \
      --header "Content-Type: application/json" \
      --data '{
        "credentials": {
          "email": "2222",
          "password": "7777",
          "password_confirmation": "7777"
        }
      }'
