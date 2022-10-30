SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "shlibmanager: install: Creating install directory ${HOME}/.local/lib/shlibmanager"
mkdir -p "${HOME}/.local/lib/shlibmanager"

echo "shlibmanager: install: Copying shlibmanager.sh to ${HOME}/.local/lib/shlibmanager/shlibmanager.sh"
cp -f "${SCRIPT_DIR}/shlibmanager.sh" "${HOME}/.local/lib/shlibmanager/shlibmanager.sh"

echo "shlibmanager: install: Done!"
