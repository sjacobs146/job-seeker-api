#!/bin/bash

TOKEN=BAhJIiVjYWJhMGYxZWUwZjA5MTMwZDFiOTlkNWUxNjY2MjZiOAY6BkVG--b8b92d09260f75fbb0814165afb632eb79b70086

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
