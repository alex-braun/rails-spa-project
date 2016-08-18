curl --include --request POST "http://localhost:3000/patterns" \
  --header "Content-Type: application/json" \
  --data '{
    "pattern": {
      "name": "Another Test",
      "user_id": "1"
    }
  }'

curl --include --request POST http://localhost:3000/patterns \
  --header "Authorization: Token token=BAhJIiU1ZTE5NTVjMzEyZDUzY2M5NDQxNWMxYzUxMzMwNDJiOQY6BkVG--e35a581e559c899b32127afc81353dcf2ed2265c" \
  --header "Content-Type: application/json" \
  --data '{
    "pattern": {
      "name": "Blues",
      "user_id": "1"
    }
  }'


    curl --include --request GET http://localhost:3000/beats/1 \
  --header "Authorization: Token token=BAhJIiU1ZTE5NTVjMzEyZDUzY2M5NDQxNWMxYzUxMzMwNDJiOQY6BkVG--e35a581e559c899b32127afc81353dcf2ed2265c" \

  curl --include --request GET "http://localhost:3000/users" \
    --header "Authorization: Token token=BAhJIiVhODM0MmE5MWIwNzdhYjBlMGNhZWMzODMwZDMzY2QzYwY6BkVG--5ff75a92baa657fdbc6aea42216b" \
