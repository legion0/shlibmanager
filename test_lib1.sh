source "${SHLIBMANAGER_PATH}"

shlibmanager_register "test_lib1" "${BASH_SOURCE[0]}"

(return 0 2>/dev/null) && echo "test_lib1: test_lib1 is being sourced"
