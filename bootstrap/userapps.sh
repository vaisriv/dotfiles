#!/usr/bin/env bash

OS=$(uname -s)

if [ "$OS" = "Darwin" ]; then
	echo "macOS detected"
	brew install --cask <userapps.macos.txt

elif [ grep -q "Arch Linux" /etc/os-release ] 2>/dev/null; then
	echo "archlinux detected"
	yay -Syu --needed - <userapps.arch.txt

else
	echo "this system is neither macOS nor archlinux, and is unsupported. please proceed with caution"
	# No operations
fi
