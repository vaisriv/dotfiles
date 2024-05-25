#!/usr/bin/env bash

OS=$(uname -s)

if [ "$OS" = "Darwin" ]; then
	if command -v brew >/dev/null 2>&1; then
		echo "brew is already installed"
	else
		echo "installing brew..."
		NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi

else
	echo "this system is not macOS, and is unsupported. please proceed with caution"
	# No operations
fi

if command -v rustup >/dev/null 2>&1; then
	echo "rust is already installed"
else
	echo "installing rust..."
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi
