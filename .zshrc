ZSH_DISABLE_COMPFIX=true
#export JAVA_HOME=/Library/Java/Home

export JAVA_14_HOME=$(/usr/libexec/java_home -v 14)
alias java14='export JAVA_HOME=$JAVA_14_HOME'
export JAVA_11_HOME=$(/usr/libexec/java_home -v 11)
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/anmol.desai/.oh-my-zsh"

 export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias cl="clear"
alias ys="yarn start"
alias gs="git status"
alias gc="git commit -am"
alias push="git push origin HEAD"
alias gd="git diff"
alias gpom="git pull origin master"
alias gcm="git checkout master"
alias ga="git add ."
alias gpal="git pull --all"
alias openconfig="vi ~/.zshrc"
alias save="source ~/.zshrc"
alias open="code ."
alias sd="serverless deploy"
alias python="python3"
alias yd="yarn dev"
alias yt="yarn test"
alias dcup="docker-compose up"
alias ddown="docker-compose down"
alias gco="git checkout"
alias gl="git log"
alias lzd='lazydocker'
alias yb='yarn build'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
