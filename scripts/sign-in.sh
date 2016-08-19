#!/bin/bash

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'


{"user":{"id":2,"email":"an@example.email","token":"BAhJIiVhODM0MmE5MWIwNzdhYjBlMGNhZWMzODMwZDMzY2QzYwY6BkVG--5ff75a92baa657fdbc6aea42216b

curl --include --request DELETE http://localhost:3000/sign-out/2 \
  --header "Authorization: Token token=BAhJIiVhODM0MmE5MWIwNzdhYjBlMGNhZWMzODMwZDMzY2QzYwY6BkVG--5ff75a92baa657fdbc6aea42216b"


  curl --include --request POST http://localhost:3000/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "an@example.email",
        "password": "an example password"
      }
    }'

curl --include --request POST http://localhost:3000/patterns \
  --header "Authorization: Token token=BAhJIiU0OGQ0NjhjNjc3MGFlZmFkZDBkZjMzMDEwNTljYzZkMwY6BkVG--b801e93c3c272e6d54aaa1692583f4badeff9522" \
  --header "Content-Type: application/json" \
  --data '{
    "pattern": {
      "name": "Folk",
      "beats": "nothing"
    }
  }'





BAhJIiVlZmU3NzU5ZWQ0MWIzZGU5MzJiYTUzODJmZTBkNzY4YwY6BkVG--1c4265b28218c9fa082014318057e795bcdecc12"

curl --include --request POST "http://localhost:3000/patterns" \
  --header "Authorization: Token token=BAhJIiVlZmU3NzU5ZWQ0MWIzZGU5MzJiYTUzODJmZTBkNzY4YwY6BkVG--1c4265b28218c9fa082014318057e795bcdecc12" \
  --header "Content-Type: application/json" \
  --data '{
    "pattern": {
      "name": "Test #3"
    }
  }'
  curl --include --request POST http://localhost:3000/patterns \
  --header "Authorization: Token token=BAhJIiVlZmU3NzU5ZWQ0MWIzZGU5MzJiYTUzODJmZTBkNzY4YwY6BkVG--1c4265b28218c9fa082014318057e795bcdecc12" \
  --header "Content-Type: application/json" \
  --data $'{
     "pattern": {
       "name": "folk",
    }
  }'




  curl --include --request POST http://localhost:3000/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "1111",
        "password": "7777"
      }
    }'
