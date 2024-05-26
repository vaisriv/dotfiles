#!/usr/bin/env bash

if grep -q "Arch Linux" /etc/os-release 2>/dev/null; then
	echo "archlinux detected"
	if command -v paru >/dev/null 2>&1; then
		echo "paru is already installed"
	else
		echo "installing paru..."
		cd /tmp || exit 1
		git clone https://aur.archlinux.org/paru.git
		cd paru || exit 1
		makepkg -si
		cd ..
		rm -rf paru
	fi
else
	echo "this system is not archlinux, and is unsupported. please proceed with caution"
	# No operations
fi
