# 0.0.1  onExecute.sh
business_logic() {
  local downloadURL=$(find_step_configuration_value "downloadURL")
  local downloadPath=$(find_step_configuration_value "downloadPath")
  echo "$step_name's downloadURL value is $downloadURL"
  echo "$step_name's downloadPath value is $downloadPath"
  curl $downloadURL --output $downloadPath/temp.zip
  ls -al $downloadPath
}
execute_command business_logic
