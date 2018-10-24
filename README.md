# Amethyst (API)

This is the API component of the long-running request backend interview.

## Set Up

Install gems

```
bundle install
```

Install dependencies

```
brew install redis
```

Start the server and workers

```
bundle exec foreman start
```

## Endpoints

All endpoints render a report object.

`GET /report`

OLD: Builds and processes a report synchronously.

`POST /reports`

Builds a new report, starts processing in background.

`GET /reports/:id`

Get the status of a report.
