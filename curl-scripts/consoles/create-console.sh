#!/bin/bash

curl "http://localhost:4741/consoles/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "example": {
      "brand": "'"${BRAND}"'"
      "name": "'"${NAME}"'"
    }
  }'

echo
