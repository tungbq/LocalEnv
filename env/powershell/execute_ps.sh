#!/bin/bash

# Usage: ./execute_python.sh src/test.py

script_path=$1

# Variables
powershell_image="mcr.microsoft.com/powershell"
container_name="ps-test01"
src_dir="$(pwd)/src"

# Function to display usage information
usage() {
  echo "Usage: $0 <script_path>"
  echo "Example: $0 src/demo.ps1"
  exit 1
}

# Check if the script name is provided
if [ -z "$script_path" ]; then
  echo "Error: No script name provided."
  usage
fi

# Command to execute
CMD="/tmp/$script_path"
echo "Running command: $CMD"

# Execute the Python script inside Docker
set -x
docker run --privileged --rm \
  --name "$container_name" \
  -v "$src_dir":/tmp/src \
  "$powershell_image" $CMD

# Check the exit status of the Docker run command
if [ $? -eq 0 ]; then
  echo "Script executed successfully."
else
  echo "Script execution failed."
  exit 1
fi
