#!/bin/bash

TOKEN=BAhJIiVjYWJhMGYxZWUwZjA5MTMwZDFiOTlkNWUxNjY2MjZiOAY6BkVG--b8b92d09260f75fbb0814165afb632eb79b70086

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
