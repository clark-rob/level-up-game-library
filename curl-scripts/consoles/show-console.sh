#!/bin/bash

curl "http://localhost:4741/consoles/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo