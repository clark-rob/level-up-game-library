#!/bin/bash

curl "http://localhost:4741/games/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "name": "'"${NAME}"'",
      "developer": "'"${DEVELOPER}"'",
      "year": "'"${YEAR}"'",
      "copy": "'"${COPY}"'",
      "system": "'"${SYSTEM}"'",
      "multiplayer": "'"${MULTIPLAYER}"'"
    }
  }'

echo
