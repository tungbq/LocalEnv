#!/bin/bash
# The common lib

ROOT_PATH="$(pwd)/../../"
echo "ROOT_PATH: $ROOT_PATH"
# ls -la $ROOT_PATH

CONFIG_FILE_PATH="$ROOT_PATH/config.yaml"

# Function to execute script inside Docker
execute_in_docker() {
  local image=$1
  local container=$2
  local command="$3"
  set -x
  docker run --rm \
    --name "$container" \
    -v "$(pwd)/src":/tmp/src \
    "$image" $command

  # Check the exit status of the Docker run command
  if [ $? -eq 0 ]; then
    echo "Script executed successfully."
  else
    echo "Script execution failed."
    exit 1
  fi
}

check_file_exists() {
  file_to_check=$1
  # Check if the YAML file exists
  if [ ! -f "$file_to_check" ]; then
    echo "Error: YAML file '$file_to_check' not found."
    exit 1
  fi
}
