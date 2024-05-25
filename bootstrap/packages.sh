#!/usr/bin/env bash
if [ grep -q "Arch Linux" /etc/os-release ] 2>/dev/null; then
	echo "archlinux detected"
	yay -Syu --needed <packages.arch.txt
else
	echo "this system is not archlinux, and is unsupported. please proceed with caution"
	# No operations
fi
