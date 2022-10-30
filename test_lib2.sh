source "${SHLIBMANAGER_PATH}"

shlibmanager_register "test_lib2" "${BASH_SOURCE[0]}"

echo "test_lib2: test_lib2 sourcing test_lib1 ..."

source "$(shlibmanager_find 'test_lib1')" || return 1

echo "test_lib2: test_lib2 succesfully sourced test_lib1!"
