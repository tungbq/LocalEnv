#!/bin/bash

# Import common script
source "../common/common.sh"

LANGUAGE="python"
script_name=$0
script_path=$1
check_input $script_name $script_path

# Load from common scipt
check_file_exists $CONFIG_FILE_PATH

# Read and parse the YAML file
image=$(yq e ".$LANGUAGE.image" $CONFIG_FILE_PATH)
container_name=$(yq e ".$LANGUAGE.default_container_name" $CONFIG_FILE_PATH)

# Command to execute
CMD="python $script_path"
docker run --rm \
  --name "$container_name" \
  -v "$(pwd)/src":/tmp/src \
  -w /tmp/ \
  "$image" $CMD
