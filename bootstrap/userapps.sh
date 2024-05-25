#!/usr/bin/env bash

OS=$(uname -s)

if [ "$OS" = "Darwin" ]; then
	brew install --cask <userapps.macos.txt
else
	echo "this system is not macOS, and is unsupported. please proceed with caution"
	# No operations
fi
