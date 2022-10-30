#!/usr/bin/env bash

set -euo pipefail

echo "shlibmanager: curl_install: Checking for git install"
which git &>/dev/null || {
  echo "WARNING: git not found, installing git ..."
  sudo apt-get update && sudo apt-get install git
}

tmpdir="$(mktemp -d)"
echo "shlibmanager: curl_install: Cloning https://github.com/legion0/shlibmanager.git to ${tmpdir}/shlibmanager"
git clone "https://github.com/legion0/shlibmanager.git" "${tmpdir}/shlibmanager"

echo "shlibmanager: curl_install: Entering local copy and starting local install"
cd "${tmpdir}/shlibmanager"
"./install.sh"

echo "shlibmanager: curl_install: Deleting temporary directory ${tmpdir}"
rm -rf "${tmpdir}"
