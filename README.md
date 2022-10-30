# ShLibManager

Simple library of 2 shell functions to register the location of shell libraries to be able to source them at runtime without the sourcing library knowing the installation location of the sourced library.

See test_main.sh for example usage.

# Install 

`./install.sh`

Will install a copy of `shlibmanager.sh` into `${HOME}/.local/lib/shlibmanager/shlibmanager.sh`

# Testing

`bash ./test_main.sh`
