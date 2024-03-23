#!/usr/bin/env bash

OS=$(uname -s)

if [ "$OS" = "Darwin" ]; then
	echo "macOS detected"
	if command -v brew >/dev/null 2>&1; then
		echo "brew is already installed"
	else
		echo "installing brew..."
		NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi

elif grep -q "Arch Linux" /etc/os-release 2>/dev/null; then
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
	echo "this system is neither macOS nor archlinux, and is unsupported. please proceed with caution"
	# No operations
fi

if command -v rustup >/dev/null 2>&1; then
	echo "rust is already installed"
else
	echo "installing rust..."
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi
