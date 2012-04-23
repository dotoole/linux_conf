PS1="[\[\033[33;1m\]\w\[\033[0m\]]\n\[\033[1;36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[0m\]\$ "

export OC4J_HOME="/home/dolanotoole/oc4j_10_1_3"
#export ORACLE_HOME="/home/dolanotoole/oc4j_10_1_3"
#export JAVA_HOME="/home/dolanotoole/jdk1.5.0_22"
export JAVA_HOME="/usr/lib/jvm/java-6-sun"
#export JBOSS_HOME="/home/dolanotoole/jboss-6.0.0.Final"
export TERM=xterm-256color
ORACLE_HOME=/usr/lib/oracle/xe/app/oracle/product/10.2.0/server
PATH=$PATH:$ORACLE_HOME/bin:$JBOSS_HOME/bin
export ORACLE_HOME
export ORACLE_SID=XE
export PATH

export ANT_OPTS="-XX:MaxPermSize=256m -Xmx940m -Denv.ORACLE_HOME=/home/dolanotoole/oc4j_10_1_3"
#WebLogic variables
export MW_HOME="/home/dolanotoole/weblogic"
#export JAVA_OPTIONS="-Dframework.database=ss -Dframework.switchOnFullTextSearch=false -Dframework.log.dir=/home/dolanotoole/log -Djava.security.auth.login.config=/home/dolanotoole/wlsdomain/base_domain/config/jaas.config -Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n -javaagent:/home/dolanotoole/wlsdomain/base_domain/lib/aspectjweaver.jar"
export USER_MEM_ARGS="-XX:+UseCompressedOops -Xms128m -Xmx1024m -XX:MaxPermSize=256m"
export NODE_PATH="/usr/local/lib/jsctags"
