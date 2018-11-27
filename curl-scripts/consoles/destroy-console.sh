#!/bin/bash

curl "http://localhost:4741/consoles" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
