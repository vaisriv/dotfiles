#!/usr/bin/env bash

OS=$(uname -s)
if [ "$OS" = "Darwin" ]; then
	xargs brew install <packages.txt
else
	echo "this system is not macOS, and is unsupported. please proceed with caution"
fi
