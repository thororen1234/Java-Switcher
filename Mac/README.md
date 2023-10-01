# Setup
Use this or use jdk.sh and make sure to run chmod +x jdk.sh on it.
Add the following to your .bash_profile or .zshrc

```
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_9_HOME=$(/usr/libexec/java_home -v9)
export JAVA_10_HOME=$(/usr/libexec/java_home -v10)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_12_HOME=$(/usr/libexec/java_home -v12)
export JAVA_13_HOME=$(/usr/libexec/java_home -v13)
export JAVA_14_HOME=$(/usr/libexec/java_home -v14)
export JAVA_15_HOME=$(/usr/libexec/java_home -v15)
export JAVA_16_HOME=$(/usr/libexec/java_home -v16)
export JAVA_17_HOME=$(/usr/libexec/java_home -v17)
export JAVA_18_HOME=$(/usr/libexec/java_home -v18)
export JAVA_19_HOME=$(/usr/libexec/java_home -v19)
export JAVA_20_HOME=$(/usr/libexec/java_home -v20)
export JAVA_21_HOME=$(/usr/libexec/java_home -v21)

alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java9='export JAVA_HOME=$JAVA_9_HOME'
alias java10='export JAVA_HOME=$JAVA_10_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java12='export JAVA_HOME=$JAVA_12_HOME'
alias java13='export JAVA_HOME=$JAVA_13_HOME'
alias java14='export JAVA_HOME=$JAVA_14_HOME'
alias java15='export JAVA_HOME=$JAVA_15_HOME'
alias java16='export JAVA_HOME=$JAVA_16_HOME'
alias java17='export JAVA_HOME=$JAVA_17_HOME'
alias java18='export JAVA_HOME=$JAVA_18_HOME'
alias java19='export JAVA_HOME=$JAVA_19_HOME'
alias java20='export JAVA_HOME=$JAVA_20_HOME'
alias java21='export JAVA_HOME=$JAVA_21_HOME'

```

for .bash_profile:

after entering the code above into your .bash_profile run source .bash_profile

for .zshrc:

after entering the code above into your .zshrc run source .zshrc