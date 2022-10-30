SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p "${HOME}/.local/lib/shlibmanager"
cp -f "${SCRIPT_DIR}/shlibmanager.sh" "${HOME}/.local/lib/shlibmanager/shlibmanager.sh"
