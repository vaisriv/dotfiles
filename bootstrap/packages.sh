#!/usr/bin/env bash

OS=$(uname -s)
if [ "$OS" = "Darwin" ]; then
	echo "macOS detected"
	xargs brew install <packages.macos.txt

elif [ grep -q "Arch Linux" /etc/os-release ] 2>/dev/null; then
	echo "archlinux detected"
	yay -Syu --needed <packages.arch.txt
else
	echo "this system is neither macOS nor archlinux, and is unsupported. please proceed with caution"
	# No operations
fi
while IFS= read -r package; do
	if [ -n "$package" ]; then
		cargo install "$package"
	fi
done <packages.cargo.txt
