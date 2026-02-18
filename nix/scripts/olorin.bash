#!/usr/bin/env bash

case "$(uname)" in
Darwin)
    nh darwin switch "$config_location" -H "$machine"
    ;;
Linux)
    if grep -qi NixOS /etc/os-release; then
        nh os switch "$config_location" -H "$machine"
    else
        nh home switch "$config_location" -H "$machine"
    fi
    ;;
*)
    echo "Unrecognized/unsupported OS."
    exit 1
    ;;
esac
