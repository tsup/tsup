# tsup

## Build status
[![Build Status](https://secure.travis-ci.org/tsup/tsup.png)](http://travis-ci.org/tsup/tsup)

## About

tsup is the most awesome pinboard application in the universe.

## Developer help

### Installing all dev dependencies

```
bundle install
```

### Create database

```
rake db:migrate
```

### Check tests

```
rake cucumber
```

### Start tsup

```
bundle exec rails server
```

##tsup client example

```
curl -H 'Content-Type:application/json' --data '{ "content": "<tsup>" }' <tsup server root url>/tsups
```

