#!/usr/bin/env bash

task_file=~/Library/Mobile\ Documents/iCloud\~com\~mav\~taskchamp/Documents/task/taskchampion.sqlite3

# Read the file to trigger the sync
echo "Syncing iCloud file: ${task_file}"
cat "${task_file}" > /dev/null

# Wait for sync
sleep 5
cat "${task_file}" > /dev/null

# Wait for sync
sleep 5
cat "${task_file}" > /dev/null
