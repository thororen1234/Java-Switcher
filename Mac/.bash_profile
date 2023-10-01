#!/bin/bash

alias jdks="/usr/libexec/java_home -V"
function jdk() {
  echo "Switching java version $1";

  requestedVersion=$1
  oldStyleVersion=8
  if [ $requestedVersion -gt $oldStyleVersion ]; then
    export JAVA_HOME=$(/usr/libexec/java_home -v $1);
  else
    export JAVA_HOME=`/usr/libexec/java_home -v 1.$1`;
  fi

  echo "Setting JAVA_HOME=$JAVA_HOME"

  which java
  java -version;
}