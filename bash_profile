#### Figure out where this script is installed and set it to DIR
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


#### Setup colorization
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


#### Pretty pretty prompt!
# Setup git-aware-prompt
export GITAWAREPROMPT=${DIR}/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# smiley face indicator for previous command exit code
smiley() {
    ret_val=$?
    if [ "$ret_val" = "0" ]
    then
        echo ":)"
    else
        echo ":( ($ret_val)"
    fi
}
# See git-aware-prompt/colors.sh or https://github.com/jimeh/git-aware-prompt for color help
export PS1="\[$txtrst\]\u@ \$(smiley) \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] \w\e[0m\n\$ "

#### BRIAN'S ALIASES
alias pbsha="git rev-parse --short HEAD | tee >(tr -d '\040\011\012\015' | pbcopy)"
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'

#### rainbow fortune
fortune -s | cowsay -f stegosaurus | lolcat

