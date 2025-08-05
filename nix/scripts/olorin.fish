#!/usr/bin/env fish

# WARN: these cases may be wrong, as i am only sure of macos' uname output
switch (uname)
case nix nixos
        nh os switch $config_location -H $machine

case Darwin
        nh darwin switch $config_location -H $machine

case linux
        nh home switch $config_location -H $machine

case '*'
        echo "Unrecognized/unsupported OS."
        exit 1
end

