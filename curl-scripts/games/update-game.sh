#!/bin/bash

curl "http://localhost:4741/games/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
      "game": {
        "name": "'"${NAME}"'"
        "developer": "'"${DEVELOPER}"'"
        "year": "'"${YEAR}"'"
        "copy": "'"${COPY}"'"
        "system": "'"${SYSTEM}"'"
        "multiplayer": "'"${MULTIPLAYER}"'"
      }
  }'
