#!/bin/bash

# terminal: NAME='Pokemon' DEVELOPER='GameFreak' YEAR=01-01-1995 COPY='physical' SYSTEM='GameBoy' MULTIPLAYER=false sh curl-scripts/games/create-game.sh

curl "http://localhost:4741/games" \
  --include \
  --request POST\
  --header "Content-Type: application/json" \
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
