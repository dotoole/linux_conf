# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#printf '\033[0;32m%s\033[0m\n' '         __                                     __   '
#printf '\033[0;32m%s\033[0m\n' '  ____  / /_     ____ ___  __  __   ____  _____/ /_  '
#printf '\033[0;32m%s\033[0m\n' ' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '
#printf '\033[0;32m%s\033[0m\n' '/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '
#printf '\033[0;32m%s\033[0m\n' '\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '
#printf '\033[0;32m%s\033[0m\n' '                        /____/                       '
#printf '\033[0;32m%s\033[0m\n' '                                                     '
 
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# bira kphoen mortalscumbag smt tjkirch
#ZSH_THEME="bira"
#ZSH_THEME="intheloop"
ZSH_THEME="agnoster"

# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="vim ~/.zshrc"
alias cdd='ant clean_deploy_dev'
alias deploy='ant /noresolve deploy_dev' 
alias vless='/usr/share/vim/vim73/macros/less.sh'
alias svndiff='svn diff | colordiff | less -R'

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras extract svn debian zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
bindkey -e

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
source $HOME/.localrc

export OC4J_HOME="$HOME/oc4j_10_1_3"
#export ORACLE_HOME="$HOME/oc4j_10_1_3"
#export JAVA_HOME="$HOME/jdk1.5.0_22"
export JAVA_HOME="$HOME/jdk1.6.0_32"
#export JBOSS_HOME="$HOME/jboss-6.0.0.Final"
export TERM=xterm-256color
ORACLE_HOME=/usr/lib/oracle/xe/app/oracle/product/10.2.0/server
PATH=$JAVA_HOME/bin:$PATH:$ORACLE_HOME/bin:$JBOSS_HOME/bin
export ORACLE_HOME
export ORACLE_SID=XE
export PATH

export ANT_OPTS="-XX:MaxPermSize=256m -Xmx940m -Denv.ORACLE_HOME=$HOME/oc4j_10_1_3"
#WebLogic variables
export MW_HOME="$HOME/weblogic"
#export JAVA_OPTIONS="-Dframework.database=ss -Dframework.switchOnFullTextSearch=false -Dframework.log.dir=$HOME/log -Djava.security.auth.login.config=$HOME/wlsdomain/base_domain/config/jaas.config -Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n -javaagent:$HOME/wlsdomain/base_domain/lib/aspectjweaver.jar"
export USER_MEM_ARGS="-XX:+UseCompressedOops -Xms128m -Xmx1024m -XX:MaxPermSize=256m"
export NODE_PATH="/usr/local/lib/jsctags"
ulimit -c unlimited
