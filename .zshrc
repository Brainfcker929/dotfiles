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

# Autojump #
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
############

# Load .zsh configs #
source $HOME/.zsh/*
#####################

# iTerm2 #
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
##########

# asdf #
. "$HOME/.asdf/asdf.sh"
########

export  AWS_PROFILE=saml

# Direnv #
export ASDF_DIRENV_BIN="$HOME/.asdf/installs/direnv/2.33.0/bin/direnv"
eval "$($ASDF_DIRENV_BIN hook zsh)"
##########