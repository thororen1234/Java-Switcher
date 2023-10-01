# Setup
Use this or use jdk.sh and make sure to run chmod +x jdk.sh on it.

Add the following to your .bash_profile or .zshrc

for .bash_profile:

```
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7) >>~/.bash_profile
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8) >>~/.bash_profile
export JAVA_9_HOME=$(/usr/libexec/java_home -v9) >>~/.bash_profile
export JAVA_10_HOME=$(/usr/libexec/java_home -v10) >>~/.bash_profile
export JAVA_11_HOME=$(/usr/libexec/java_home -v11) >>~/.bash_profile
export JAVA_12_HOME=$(/usr/libexec/java_home -v12) >>~/.bash_profile
export JAVA_13_HOME=$(/usr/libexec/java_home -v13) >>~/.bash_profile
export JAVA_14_HOME=$(/usr/libexec/java_home -v14) >>~/.bash_profile
export JAVA_15_HOME=$(/usr/libexec/java_home -v15) >>~/.bash_profile
export JAVA_16_HOME=$(/usr/libexec/java_home -v16) >>~/.bash_profile
export JAVA_17_HOME=$(/usr/libexec/java_home -v17) >>~/.bash_profile
export JAVA_18_HOME=$(/usr/libexec/java_home -v18) >>~/.bash_profile
export JAVA_19_HOME=$(/usr/libexec/java_home -v19) >>~/.bash_profile
export JAVA_20_HOME=$(/usr/libexec/java_home -v20) >>~/.bash_profile
export JAVA_21_HOME=$(/usr/libexec/java_home -v21) >>~/.bash_profile

alias java7='export JAVA_HOME=$JAVA_7_HOME' >>~/.bash_profile
alias java8='export JAVA_HOME=$JAVA_8_HOME' >>~/.bash_profile
alias java9='export JAVA_HOME=$JAVA_9_HOME' >>~/.bash_profile
alias java10='export JAVA_HOME=$JAVA_10_HOME' >>~/.bash_profile
alias java11='export JAVA_HOME=$JAVA_11_HOME' >>~/.bash_profile
alias java12='export JAVA_HOME=$JAVA_12_HOME' >>~/.bash_profile
alias java13='export JAVA_HOME=$JAVA_13_HOME' >>~/.bash_profile
alias java14='export JAVA_HOME=$JAVA_14_HOME' >>~/.bash_profile
alias java15='export JAVA_HOME=$JAVA_15_HOME' >>~/.bash_profile
alias java16='export JAVA_HOME=$JAVA_16_HOME' >>~/.bash_profile
alias java17='export JAVA_HOME=$JAVA_17_HOME' >>~/.bash_profile
alias java18='export JAVA_HOME=$JAVA_18_HOME' >>~/.bash_profile
alias java19='export JAVA_HOME=$JAVA_19_HOME' >>~/.bash_profile
alias java20='export JAVA_HOME=$JAVA_20_HOME' >>~/.bash_profile
alias java21='export JAVA_HOME=$JAVA_21_HOME' >>~/.bash_profile

```

after entering the code above into your .bash_profile run source .bash_profile

for .zshrc:

```
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7) >>~/.zshrc
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8) >>~/.zshrc
export JAVA_9_HOME=$(/usr/libexec/java_home -v9) >>~/.zshrc
export JAVA_10_HOME=$(/usr/libexec/java_home -v10) >>~/.zshrc
export JAVA_11_HOME=$(/usr/libexec/java_home -v11) >>~/.zshrc
export JAVA_12_HOME=$(/usr/libexec/java_home -v12) >>~/.zshrc
export JAVA_13_HOME=$(/usr/libexec/java_home -v13) >>~/.zshrc
export JAVA_14_HOME=$(/usr/libexec/java_home -v14) >>~/.zshrc
export JAVA_15_HOME=$(/usr/libexec/java_home -v15) >>~/.zshrc
export JAVA_16_HOME=$(/usr/libexec/java_home -v16) >>~/.zshrc
export JAVA_17_HOME=$(/usr/libexec/java_home -v17) >>~/.zshrc
export JAVA_18_HOME=$(/usr/libexec/java_home -v18) >>~/.zshrc
export JAVA_19_HOME=$(/usr/libexec/java_home -v19) >>~/.zshrc
export JAVA_20_HOME=$(/usr/libexec/java_home -v20) >>~/.zshrc
export JAVA_21_HOME=$(/usr/libexec/java_home -v21) >>~/.zshrc

alias java7='export JAVA_HOME=$JAVA_7_HOME' >>~/.zshrc
alias java8='export JAVA_HOME=$JAVA_8_HOME' >>~/.zshrc
alias java9='export JAVA_HOME=$JAVA_9_HOME' >>~/.zshrc
alias java10='export JAVA_HOME=$JAVA_10_HOME' >>~/.zshrc
alias java11='export JAVA_HOME=$JAVA_11_HOME' >>~/.zshrc
alias java12='export JAVA_HOME=$JAVA_12_HOME' >>~/.zshrc
alias java13='export JAVA_HOME=$JAVA_13_HOME' >>~/.zshrc
alias java14='export JAVA_HOME=$JAVA_14_HOME' >>~/.zshrc
alias java15='export JAVA_HOME=$JAVA_15_HOME' >>~/.zshrc
alias java16='export JAVA_HOME=$JAVA_16_HOME' >>~/.zshrc
alias java17='export JAVA_HOME=$JAVA_17_HOME' >>~/.zshrc
alias java18='export JAVA_HOME=$JAVA_18_HOME' >>~/.zshrc
alias java19='export JAVA_HOME=$JAVA_19_HOME' >>~/.zshrc
alias java20='export JAVA_HOME=$JAVA_20_HOME' >>~/.zshrc
alias java21='export JAVA_HOME=$JAVA_21_HOME' >>~/.zshrc
```

after entering the code above into your .zshrc run source .zshrc