# 0.0.2  onExecute.sh
business_logic() {
  local downloadURL=$(find_step_configuration_value "downloadURL")
  local downloadPath=$(find_step_configuration_value "downloadPath")
  local doUnzip=$(find_step_configuration_value "doUnzip")
  echo "$step_name's downloadURL value is $downloadURL"
  echo "$step_name's downloadPath value is $downloadPath"
  echo "$step_name's doUnzip value is $doUnzip"
  mkdir -p $downloadPath
  curl -L $downloadURL > $downloadPath/mono.tar.gz
  if [ $doUnzip ]
  then
    tar -zxvf $downloadPath/mono.tar.gz
  fi
  pushd $downloadPath/devops*
    ls -al
  popd
}
execute_command business_logic
