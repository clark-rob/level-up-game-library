#!/bin/bash

curl --include --request PATCH "http://localhost:4741/consoles/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
      "patient": {
        "brand": "'"${BRAND}"'",
        "name": "'"${NAME}"'",
      }
  }'
