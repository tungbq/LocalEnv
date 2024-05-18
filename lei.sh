#!/bin/bash

# Local Environment CLI (lei)

# Func
usage() {
  echo "Usage: $0 <language> <script_path>"
  exit 1
}

check_file_exists() {
  file_to_check=$1
  # Check if the YAML file exists
  if [ ! -f "$file_to_check" ]; then
    echo "Error: YAML file '$file_to_check' not found."
    exit 1
  fi
}

check_input() {
  local language=$1
  local script_path=$2
  # Check if the script name is provided
  if [[ -z "$script_path" || -z "$language" ]]; then
    usage $script_name
  fi
}

# Variables
CONFIG_FILE_PATH="./config.yaml"
LANGUAGE=$1
script_path=$2
src_dir=$(basename $script_path)

check_input $LANGUAGE $script_path

# Load from common scipt
check_file_exists $CONFIG_FILE_PATH

# Read and parse the YAML file
image=$(yq e ".$LANGUAGE.image" $CONFIG_FILE_PATH)
container_name=$(yq e ".$LANGUAGE.default_container_name" $CONFIG_FILE_PATH)
base_cmd=$(yq e ".$LANGUAGE.base_command" $CONFIG_FILE_PATH)

# Command to execute
echo "Running docker"

docker run --rm \
  --name "$container_name" \
  -v "$(pwd)":/tmp/ \
  -w /tmp/ \
  "$image" $base_cmd $script_path

# Check the exit status of the Docker run command
if [ $? -eq 0 ]; then
  echo "Script executed successfully."
else
  echo "Script execution failed."
  exit 1
fi
