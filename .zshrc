# Powerlevel10k theme #
source ~/powerlevel10k/powerlevel10k.zsh-theme
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
zstyle ":omz:update" mode prompt 
HIST_STAMPS="dd.mm.yyyy"
#######################

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. #
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
##################################################################

# Znap #
# Download Znap, if it's not there yet.
[[ -r ~/.zsh/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.zsh/znap
source ~/.zsh/znap/znap.zsh  # Start Znap

znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance}
znap prompt ohmyzsh/ohmyzsh robbyrussell

# `znap source` starts plugins.
znap source marlonrichert/zsh-autocomplete

# `znap eval` makes evaluating generated command output up to 10 times faster.
znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'

# TODO:
# `znap function` lets you lazy-load features you don't always need.
# znap function _pyenv pyenv "znap eval pyenv 'pyenv init - --no-rehash'"
# compctl -K    _pyenv pyenv

# `znap install` adds new commands and completions.
znap install aureliojargas/clitest zsh-users/zsh-completions
########

# Load .zsh configs #
source $HOME/.zsh/*
#####################

# asdf #
. "$HOME/.asdf/asdf.sh"
########

export  AWS_PROFILE=saml

# Direnv #
export ASDF_DIRENV_BIN="$HOME/.asdf/installs/direnv/2.33.0/bin/direnv"
znap eval direnv '$ASDF_DIRENV_BIN hook zsh'
export DIRENV_LOG_FORMAT=""
##########

# Zoxide #
znap eval zoxide 'zoxide init --cmd cd zsh'
##########