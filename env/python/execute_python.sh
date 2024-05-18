#!/bin/bash

# Import common script
source "../common/common.sh"

LANGUAGE="python"
script_path=$1
check_input $0 $script_path
CMD="python /tmp/$script_path"

# Load from common scipt
yaml_file=$CONFIG_FILE_PATH
check_file_exists $yaml_file

# Read and parse the YAML file
image=$(yq e ".$LANGUAGE.image" $yaml_file)
container_name=$(yq e ".$LANGUAGE.default_container_name" $yaml_file)

# Command to execute
execute_in_docker "$image" "$container_name" "$CMD"
