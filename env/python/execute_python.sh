#!/bin/bash

# Import common script
source "../common/common.sh"

# Usage: ./execute_python.sh src/demo.py
# Function to display usage information
usage() {
  echo "Usage: $0 <script_path>"
  echo "Example: $0 src/test.py"
  exit 1
}

script_path=$1

# Load from common
yaml_file=$CONFIG_FILE_PATH

check_file_exists $yaml_file

# Read and parse the YAML file
python_image=$(yq e '.python.image' $yaml_file)
container_name=$(yq e '.python.default_container_name' $yaml_file)
echo "python_image: $python_image"
echo "container_name: $container_name"

# Check if the script name is provided
if [ -z "$script_path" ]; then
  echo "Error: No script name provided."
  usage
fi

# Command to execute
CMD="python /tmp/$script_path"
execute_in_docker "$python_image" "$container_name" "$CMD"
