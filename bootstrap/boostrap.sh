#!/usr/bin/env bash

printf "\033[1;31minstallation of required packages. press y to continue or n to cancel.\033[0m\n"
printf "\033[1;31mif you choose not to install the packages, here be dragons!!\033[0m\n"

while true; do
	read -r input
	if [ "$input" = "y" ]; then
		cd ./bootstrap
		echo "installing package manager (yay)"
		/bin/bash ./manager.sh
		echo "installing dev packages..."
		/bin/bash ./packages.sh
		echo "installing user applications..."
		/bin/bash ./userapps.sh
		echo "making fish the default shell..."
		chsh -s $(which fish)
		break
	elif [ "$input" = "n" ]; then
		break
	else
		printf "\033[1;31minvalid input. please press y to continue or n to cancel.\033[0m\n"
	fi
done
