
# job-seeker-api
This project is a Ruby-on-Rails API to track job search information.


## API

### Jobs

| Verb   | URI Pattern | Controller#Action |
|--------|-------------|-------------------|
| GET    | `/jobs`     | `jobs#index`      |
| POST   | `/jobs`     | `jobs#create`     |
| GET    | `/jobs/:id` | `jobs#show`       |
| PATCH  | `/jobs/:id` | `jobs#update`     |
| DELETE | `/jobs/:id` | `jobs#destroy`    |

#### GET /jobs

Request:

```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f sh scripts/jobs/get-jobs.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
	"jobs": [{
		"id": 4,
		"company": "CloudHealth",
		"title": "Full-stack Developer",
		"url": "https://jobs.lever.co/cloudhealthtech/d00de32f-1d08-438d-b6d8-dc8de89cd753",
		"date_applied": null,
		"status": null,
		"recruiter_name": null,
		"recruiter_email": null,
		"recruiter_phone": null,
		"notes": null
	}, {
		"id": 3,
		"company": "Appcues",
		"title": "Full-stack Engineer",
		"url": "https://appcues.breezy.hr/p/6b9ca5952dd4-full-stack-engineer",
		"date_applied": null,
		"status": null,
		"recruiter_name": null,
		"recruiter_email": null,
		"recruiter_phone": null,
		"notes": null
	}, {
		"id": 2,
		"company": "Toast",
		"title": "Lead Software Engineer",
		"url": "https://pos.toasttab.com/careers/job-listings?gh_jid=220306",
		"date_applied": null,
		"status": null,
		"recruiter_name": null,
		"recruiter_email": null,
		"recruiter_phone": null,
		"notes": null
	}]
```

#### GET /jobs/:id

Request:

```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/jobs/job.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
	"job": {
		"id": 2,
		"company": "Toast",
		"title": "Lead Software Engineer",
		"url": "https://pos.toasttab.com/careers/job-listings?gh_jid=220306",
		"date_applied": null,
		"status": null,
		"recruiter_name": null,
		"recruiter_email": null,
		"recruiter_phone": null,
		"notes": null
	}
}
```
#### POST /jobs

Request:

```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "job": {
      "company": "'"${COMPANY}"'",
      "title": "'"${TITLE}"'",
      "url": "'"${URL}"'"
    }
  }'
```

```sh
 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f COMPANY=Appcues TITLE="Full-stack Engineer" URL=https://appcues.breezy.hr/p/6b9ca5952dd4-full-stack-engineer sh scripts/jobs/create-job.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
	"job": {
		"id": 3,
		"company": "Appcues",
		"title": "Full-stack Engineer",
		"url": "https://appcues.breezy.hr/p/6b9ca5952dd4-full-stack-engineer",
		"date_applied": null,
		"status": null,
		"recruiter_name": null,
		"recruiter_email": null,
		"recruiter_phone": null,
		"notes": null
	}
}
```

#### PATCH /jobs/:id

Request:

```sh
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
```

```sh
 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f ID=3 STATUS=applied DATE=2017-11-01 NAME="Larry McDonald" sh scripts/jobs/update-job.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
	"job": {
		"id": 3,
		"company": "Appcues",
		"title": "Full-stack Engineer",
		"url": "https://appcues.breezy.hr/p/6b9ca5952dd4-full-stack-engineer",
		"date_applied": "2017-11-01",
		"status": "applied",
		"recruiter_name": "Larry McDonald",
		"recruiter_email": null,
		"recruiter_phone": null,
		"notes": null
	}
}
```
#### DELETE /jobs/:id

Request:

```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/jobs"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/jobs/delete-job.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com"
  }
}
```

#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password/$ID" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
ID=1 OLDPW=hannah NEWPW=elle TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl http://localhost:4741/sign-out/$ID \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "bob@ava.com"
    },
    {
      "id": 1,
      "email": "ava@bob.com"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "bob@ava.com"
  }
}
```
