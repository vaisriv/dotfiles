#!/usr/bin/env fish

switch (uname)
    case Darwin
        nh darwin switch $config_location -H $machine

    case Linux
        if grep -qi NixOS /etc/os-release
            nh os switch $config_location -H $machine
        else
            nh home switch $config_location -H $machine
        end

    case '*'
        echo "Unrecognized/unsupported OS."
        exit 1
end
