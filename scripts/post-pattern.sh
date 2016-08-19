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


curl --include --request GET "http://localhost:3000/beats/1" \
  --header "Authorization: Token token=BAhJIiVhY2I5ZTUxZDJjYjQ5MTcyNjBlZjdiY2FlZGQ2YzkwNgY6BkVG--55840e7e428e31cb0c0d8550456d761da871cc20" \

curl --include --request GET "http://localhost:3000/users/1" \
  --header "Authorization: Token token=BAhJIiVhY2I5ZTUxZDJjYjQ5MTcyNjBlZjdiY2FlZGQ2YzkwNgY6BkVG--55840e7e428e31cb0c0d8550456d761da871cc20" \
