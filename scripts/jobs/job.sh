#!/bin/bash

TOKEN=BAhJIiVmNmUzMmM5ZDU1ZTAxZTRjM2M4MTZmYTkxNDgwODMwZgY6BkVG--fce8ddddf1a5fca24eaccaf6346e2652f7b36895

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
