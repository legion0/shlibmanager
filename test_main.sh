SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export SHLIBMANAGER_CONFIG="${SCRIPT_DIR}/test_config.json"

# shlibmanager is sourced before everything else in bashrc to manage dependencies
source "${SCRIPT_DIR}/shlibmanager.sh"

# lib1 registers itself during its own install process
shlibmanager_register "test_lib1" "${SCRIPT_DIR}/test_lib1.sh"

# lib2 is sourced, lib2 relies on lib1 and will find its location via shlibmanager at runtime
source "${SCRIPT_DIR}/test_lib2.sh"

# clean up test data file
rm -f "${SHLIBMANAGER_CONFIG}"
