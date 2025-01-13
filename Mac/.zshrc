#!/bin/bash

alias jdks="/usr/libexec/java_home -V"
function jdk() {
  if [[ -z $1 ]]; then
    echo "Error: Please specify a Java version."
    return 1
  fi
  
  echo "Switching java version $1";

  requestedVersion=$1
  oldStyleVersion=8
  
  if [[ $requestedVersion -gt $oldStyleVersion ]]; then
    export JAVA_HOME=$(/usr/libexec/java_home -v $1 2>/dev/null)
  else
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.$1 2>/dev/null)
  fi

  if [[ -z $JAVA_HOME ]]; then
    echo "Error: Could not find Java version $1"
    return 1
  fi

  echo "Setting JAVA_HOME=$JAVA_HOME"

  which java
  java -version;
}