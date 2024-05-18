#!/bin/bash

# Import common script
source "../common/common.sh"

# Usage: ./execute_python.sh src/demo.py
# Function to display usage information
usage() {
  echo "Usage: $0 <script_path>"
  echo "Example: $0 src/demo.ps1"
  exit 1
}

script_path=$1

# Load from common
yaml_file=$CONFIG_FILE_PATH

check_file_exists $yaml_file

# Read and parse the YAML file
powershell_image=$(yq e '.powershell.image' $yaml_file)
container_name=$(yq e '.powershell.default_container_name' $yaml_file)
echo "powershell_image: $powershell_image"
echo "container_name: $container_name"

# Check if the script name is provided
if [ -z "$script_path" ]; then
  echo "Error: No script name provided."
  usage
fi

# Command to execute
CMD="/tmp/$script_path"
execute_in_docker "$powershell_image" "$container_name" "$CMD"
