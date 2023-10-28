#### Figure out where this script is installed and set it to DIR
export BRAINFISH_SCRIPT_SOURCE=${0%/*}

source $BRAINFISH_SCRIPT_SOURCE/shell_common

#### zsh functions
# Bitwarden login
function bwu() {
    BW_STATUS=$(bw status | jq -r .status)
    case "$BW_STATUS" in
    "unauthenticated")
        echo "Logging into BitWarden"
        export BW_SESSION=$(bw login --raw)
        ;;
    "locked")
        echo "Unlocking Vault"
        export BW_SESSION=$(bw unlock --raw)
        ;;
    "unlocked")
        echo "Vault is unlocked"
        ;;
    *)
        echo "Unknown Login Status: $BW_STATUS"
        return 1
        ;;
    esac
    bw sync
}

#### homebrew completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  ## oh-my-zsh will run compinit
  # autoload -Uz compinit
  # compinit
fi

#### oh-my-zsh setup
plugins=(git catimg)
