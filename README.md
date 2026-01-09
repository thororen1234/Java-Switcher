# Java-Switcher

This a repo for java switching scripts/aliases on Windows.

# Downloads

You can get the java versions [here](https://www.oracle.com/java/technologies/downloads/archive/).

# Important

Make sure to check if they all work and if some don't check your java paths in `C:\Program Files\Java\` and `C:\Program Files (x86)\Java\` so you can compare them to javaX.

# Setup

Type env into your search bar and click the one that says `edit the system environment variables`.

Click on `Environment Variables`.

Go to `System Variables` and scroll until you see Path.

Delete the following entries:

```
C:\ProgramData\Oracle\Java\javapath
C:\Program Files (x86)\Common Files\Oracle\Java\javapath
```

Add the following entries:

```
%JAVA_HOME%\bin
C:\Program Files\Java\scripts
```

Click `OK`.

# Scripts

Copy the scripts folder to `C:\Program Files\Java\`.

Now restart your command prompt/powershell if it was open and your done.

# JAVA_HOME Variable

Check to see if you have a JAVA_HOME system variable, if you don't follow the steps below:

Click `New...` under `System variables`.

Name the variable `JAVA_HOME` and set its value as one of your java installations from `C:\Program Files\Java\` or `C:\Program Files (x86)\Java\`.

Example:

```
Variable name: JAVA_HOME
Variable value: C:\Program Files\Java\jdk-1.8
```

![Example](https://i.imgur.com/7O771a2.png)
