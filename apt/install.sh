#!/usr/bin/env bash
# Adds Mojo Up's apt repository and installs MojoFlow on Debian or Ubuntu (amd64):
#
#   curl -fsSL https://mojo-up.github.io/mojoflow-releases/apt/install.sh | sudo bash
#
# After this, `apt upgrade` and Software Updater keep MojoFlow current like any other package.
set -euo pipefail
base=https://mojo-up.github.io/mojoflow-releases/apt
[ "$(id -u)" = 0 ] || { echo "Run this with sudo: it adds a package source and installs a package." >&2; exit 1; }
command -v apt-get >/dev/null || { echo "This installer is for Debian and Ubuntu (apt). Other Linux: see https://docs.mojoup.com.au/mojoflow/install" >&2; exit 1; }
install -d -m 755 /usr/share/keyrings
curl -fsSL "$base/mojoup.gpg" -o /usr/share/keyrings/mojoup.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/mojoup.gpg] $base stable main" > /etc/apt/sources.list.d/mojoup.list
apt-get update -o Dir::Etc::sourcelist=sources.list.d/mojoup.list -o Dir::Etc::sourceparts=- -o APT::Get::List-Cleanup=0
apt-get install -y mojoflow
echo
echo "MojoFlow is installed. Open it from your apps; the first window walks you through setup."
echo "Updates come with your other software updates. To remove it later: sudo apt remove mojoflow"
