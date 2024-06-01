#!/usr/bin/env bash
set -e

# Install dependencies
bundle install --deployment --without development test

# Compile assets (if necessary)
bundle exec rake assets:precompile
