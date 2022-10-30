[[ "${__SHLIBMANAGER_VERSION:-}" != "1" ]] && __MY_BASHRC_VERSION="1" || return 0

export SHLIBMANAGER_PATH="${BASH_SOURCE[0]}"

function shlibmanager_register() {
  local library_name="${1:?missing library name}"
  local library_path="${2:?missing library path}"
  local shlibmanager_config_path="${SHLIBMANAGER_CONFIG:-"$HOME/.config/shlibmanager/config.json"}"
  mkdir -p "$HOME/.config/shlibmanager"
  python3 <(cat <<EOF
library_name='${library_name}'
library_path='${library_path}'
config_file_path = '${shlibmanager_config_path}'
import os, json
config = {}
if os.path.exists(config_file_path):
  with open(config_file_path, 'r') as config_file:
    config = json.load(config_file)
config[library_name] = library_path
with open(config_file_path, 'w') as config_file:
  json.dump(config, config_file)
EOF
  )
}

function shlibmanager_find() {
  local library_name="${1:?missing library name}"
  local shlibmanager_config_path="${SHLIBMANAGER_CONFIG:-"$HOME/.config/shlibmanager/config.json"}"
  mkdir -p "$HOME/.config/shlibmanager"
  python3 <(cat <<EOF
library_name='${library_name}'
config_file_path = '${shlibmanager_config_path}'
import os, json
config = {}
if os.path.exists(config_file_path):
  with open(config_file_path, 'r') as config_file:
    config = json.load(config_file)
if library_name in config:
  print(config[library_name])
EOF
  )
}
