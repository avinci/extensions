execute_step() {
  local downloadURL=$(find_step_configuration_value "downloadURL")
  local downloadPath=$(find_step_configuration_value "downloadPath")
  echo "$step_name's downloadURL value is $downloadURL"
  echo "$step_name's downloadPath value is $downloadPath"
  mkdir -p $downloadPath
  curl -L $downloadURL > $downloadPath/mono.tar.gz
  echo "List of files after download"
  ls -al $downloadPath
  if [ $doUnzip ]
  then
    tar -zxvf $downloadPath/mono.tar.gz
  fi
  echo "List of files after untar"
  ls -al $downloadPath
}
execute_command execute_step
