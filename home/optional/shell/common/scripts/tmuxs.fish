#!/usr/bin/env fish

# Check if the user has supplied a session name
if test (count $argv) -ne 1
    tmux ls
else
    set SESSION_NAME $argv[1]

    tmux has-session -t $SESSION_NAME >/dev/null

    # Attempt to attach to the session if it exists
    if test "$status" -eq 0
        echo "Attaching to existing session '$SESSION_NAME'"
        tmux attach-session -t $SESSION_NAME
    else
        # If the session doesn't exist, create it
        echo "Creating new session '$SESSION_NAME'"
        tmux new-session -d -s $SESSION_NAME
        tmux attach-session -t $SESSION_NAME
    end
end
