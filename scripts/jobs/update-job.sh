#!/bin/bash

TOKEN=BAhJIiVmNmUzMmM5ZDU1ZTAxZTRjM2M4MTZmYTkxNDgwODMwZgY6BkVG--fce8ddddf1a5fca24eaccaf6346e2652f7b36895

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "job": {
      "status": "'"${STATUS}"'",
      "date_applied": "'"${DATE}"'",
      "recruiter_name": "'"${NAME}"'"
    }
  }'

echo
