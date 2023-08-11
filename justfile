#!/usr/bin/env just --justfile
export PATH := "./node_modules/.bin:" + env_var('PATH')

build:
  npm run build

run-node:
  node src/app.js

run-python:
  poetry run uwsgi uwsgi.ini
