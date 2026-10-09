#!/usr/bin/env bash

# this makes sure that this script always runs in its own directory so that it pulls
# the right `.env`, for instance (this should also be an absolute path)
script_path="$(dirname "$(realpath "${BASH_SOURCE[0]:-$0}")")"
cd "$script_path"

source ./.env

# SYNC: path to files!!
cd "$SERVED_FILES_DIR"

git add -A
git commit -m "[autocommit] thank you github for free backups <3"
git push
