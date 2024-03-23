#!/usr/bin/env bash
echo "linking dots..."
sh ./dotbot.sh
echo "updating submodules..."
git submodule update --init --recursive
echo "bootstrapping..."
sh ./bootstrap/boostrap.sh
