#### Figure out where this script is installed and set it to DIR
SCRIPT_SOURCE=${0%/*}

source $SCRIPT_SOURCE/shell_common

#### oh-my-zsh setup
plugins=(git catimg)
