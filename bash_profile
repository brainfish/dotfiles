#### Figure out where this script is installed and set it to SCRIPT_SOURCE
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  SCRIPT_SOURCE="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$SCRIPT_SOURCE/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
SCRIPT_SOURCE="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


#### Common BASH/ZSH config
source $SCRIPT_SOURCE/shell_common


#### Bash completions
source /usr/local/etc/bash_completion.d/git-completion.bash


#### Pretty pretty prompt!
# Setup git-aware-prompt
export GITAWAREPROMPT=${SCRIPT_SOURCE}/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# See git-aware-prompt/colors.sh or https://github.com/jimeh/git-aware-prompt for color help
export PS1="\[$txtrst\]\u@ \$(smiley) \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] \w\e[0m\n\$ "
