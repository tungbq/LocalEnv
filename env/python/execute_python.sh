#!/bin/bash

# Usage: ./execute_python.sh src/test.py

script_path=$1

# Variables
python_image="python:3.11"
container_name="pytest01"
src_dir="$(pwd)/src"

# Function to display usage information
usage() {
  echo "Usage: $0 <script_path>"
  echo "Example: $0 src/test.py"
  exit 1
}

# Check if the script name is provided
if [ -z "$script_path" ]; then
  echo "Error: No script name provided."
  usage
fi

# Command to execute
CMD="python /tmp/$script_path"

# Execute the Python script inside Docker
docker run --rm \
  --name "$container_name" \
  -v "$src_dir":/tmp/src \
  "$python_image" $CMD

# Check the exit status of the Docker run command
if [ $? -eq 0 ]; then
  echo "Script executed successfully."
else
  echo "Script execution failed."
  exit 1
fi
