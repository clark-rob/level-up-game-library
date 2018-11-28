#!/bin/bash

# pry: Game.update(id: 1, name:'Pokemon Red', developer:'GameFreak', year:'1995-01-01',copy:'physical', system:'GameBoy', multiplayer:false, user_id:1)


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
