#!/bin/bash

# Common variables
ROOT_PATH="$(pwd)/../../"
CONFIG_FILE_PATH="$ROOT_PATH/config.yaml"

# Function to execute script inside Docker
execute_in_docker() {
  local image=$1
  local container=$2
  local command="$3"
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

# Usage: ./execute_python.sh src/demo.py
# Function to display usage information
usage() {
  local script_name=$1
  echo "Usage: $1 <script_path>"
  exit 1
}

check_input() {
  local script_name=$1
  local script_path=$2
  # Check if the script name is provided
  if [ -z "$script_path" ]; then
    echo "Error: No script name provided."
    usage $script_name
  fi
}
