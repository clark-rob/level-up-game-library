#!/bin/bash

curl "http://localhost:4741/consoles" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "console": {
      "brand": "'"${BRAND}"'"
      "name": "'"${NAME}"'"
    }
  }'

echo
