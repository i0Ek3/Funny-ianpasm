 ## 
 ## java-cfg.sh
 ## ianpasm(kno30826@gmail.com)
 ## 2018-01-21 11:01:27
 ##
 ## ref link: https://www.cnblogs.com/zeze/p/5902124.html

#!/bin/bash

sudo mkdir -p /opt/java
cd ~/Downloads && tar zxvf jdk* && mv jdk*/ jdk
sudo mv jdk /opt/java
sudo ln -s /opt/java/jdk /usr/local/bin/jdk

export JAVA_HOME=/opt/java/jdk > /etc/profile 
export CLASSPATH=$JAVA_HOME/lib > /etc/profile
export $PATH:$JAVA_HOME/bin
export PATH JAVA_HOME CLASSPATH 
source /etc/profile

java -version
