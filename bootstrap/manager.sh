#!/usr/bin/env bash

if grep -q "Arch Linux" /etc/os-release 2>/dev/null; then
	echo "archlinux detected"
	if command -v yay >/dev/null 2>&1; then
		echo "yay is already installed"
	else
		echo "installing yay..."
		cd /tmp || exit 1
		pacman -S --needed git base-devel
		git clone https://aur.archlinux.org/yay.git
		cd yay || exit 1
		makepkg -si
		cd ..
		rm -rf yay
	fi
else
	echo "this system is not archlinux, and is unsupported. please proceed with caution"
	# No operations
fi
