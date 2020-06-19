sample() {
  local downloadURL=$(find_step_configuration_value "downloadURL")
  echo "$step_name's downloadURL value is $downloadURL"
}

execute_command sample
