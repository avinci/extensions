# 0.0.2  onExecute.sh
business_logic() {
  local downloadURL=$(find_step_configuration_value "downloadURL")
  echo "$step_name's downloadURL value is $downloadURL"
  echo "$step_name's downloadURL value is $downloadURL"
  echo "$step_name's doUnzip value is $doUnzip"
  mkdir -p $downloadPath
  curl $downloadURL --output $downloadPath/temp.zip
  if [ $doUnzip ]
  then
    unzip $downloadPath/temp.zip
  fi
  ls -al $downloadPath
}
execute_command business_logic
