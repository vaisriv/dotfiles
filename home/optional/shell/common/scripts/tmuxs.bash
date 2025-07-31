#!/usr/bin/env bash

# Check if the user has supplied a session name
if [ "$#" -ne 1 ]; then
    tmux ls
else
    SESSION_NAME="$1"

    # Check if the session exists
    if tmux has-session -t "$SESSION_NAME" >/dev/null 2>&1; then
        echo "Attaching to existing session '$SESSION_NAME'"
        tmux attach-session -t "$SESSION_NAME"
    else
        echo "Creating new session '$SESSION_NAME'"
        tmux new-session -d -s "$SESSION_NAME"
        tmux attach-session -t "$SESSION_NAME"
    fi
fi
