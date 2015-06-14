# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

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
ZSH_THEME="blinks"

# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="vim ~/.zshrc"
alias cdd='ant clean_deploy_dev'
alias deploy='ant /noresolve deploy_dev'
alias vless='/usr/share/vim/vim73/macros/less.sh'
alias svndiff='svn diff | colordiff | less -R'
alias df='df -hx cifs'
alias android-connect='sudo mtpfs -o allow_other /mnt/nexus7'
alias android-disconnect='sudo fusermount -u /mnt/nexus7'

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
plugins=(git extract zsh-syntax-highlighting python django virtualenv bower npm scala sbt go docker vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
bindkey -e

# colour man pages
#-------- Color Manpages
export LESS_TERMCAP_mb=$'\E[01;31m'             # begin blinking
export LESS_TERMCAP_md=$'\E[01;31m'             # begin bold
export LESS_TERMCAP_me=$'\E[0m'                 # end mode
export LESS_TERMCAP_se=$'\E[0m'                 # end standout-mode
export LESS_TERMCAP_so=$'\E[01;47;34m'          # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'                 # end underline
export LESS_TERMCAP_us=$'\E[01;32m'             # begin underline
#export MANPAGER="/usr/bin/most -s"             # color using most

source $HOME/.localrc
export ARCHFLAGS="-arch x86_64"

export TERM=xterm-256color

export ANT_OPTS="-XX:MaxPermSize=256m -Xmx940m -Denv.ORACLE_HOME=$HOME/oc4j_10_1_3"
export NODE_PATH=/usr/local/lib/node_modules:/usr/local/lib/jsctags
ulimit -c unlimited

# extra colours for ls
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS
