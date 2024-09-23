#!/usr/bin/env bash
set -x  # Bật chế độ debug

rm -f tmp/pids/server.pid

bundle check || bundle install --binstubs=$BUNDLE_BIN

bundle exec yarn install --check-files

rails db:prepare
