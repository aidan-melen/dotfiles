# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="robbyrussell"
# plugins=(git)
# source $ZSH/oh-my-zsh.sh

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="common"
ENABLE_CORRECTION="true"

plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias hostfile="sudo vim /etc/hosts"
alias sshconfig="vim ~/.ssh/config"

# MAKE TERMINAL BETTER
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias l='ls'     
alias ll='ls -FGlAhp'
cd() { builtin cd "$@"; ls; }
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias ~="cd ~"   
alias mkdir='mkdir -p'
alias c='clear'  
alias his='history'

# SEARCHING
alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

# GIT
alias gi='git init'
alias gs='git status'
alias ga='git add -A'
alias gb='git branch'
alias gc='git commit -m'
alias gp='git push'
alias gpom='git push origin master'
alias gpl='git pull'
alias gplom='git pull origin master'
alias gr='git rm'
alias gd='git diff'
alias gl='git log'
alias gt='git tag'
alias gta='git tag -a'
alias gpt='git push --tag'
alias gco='git checkout'
alias gcom='git checkout master'
alias got='git'
alias get='git'

# PYTHON
alias pyhton='python'

# DOCKER
alias d='docker'
alias d='docker'
alias dokcer='docker'
alias di='docker images'
alias dst='docker start'
alias dsp='docker stop'
alias dp='docker push'
alias dpl='docker pull'
alias drm='docker rm'
alias drmi='docker rmi'
alias docker-clear='docker system prune --all'

# TERRAFORM
alias tf='terraform'
alias tfv='terrform validate'
alias tfi='terraform init'
alias tfifc='terraform init -force-copy'
alias tfp='terraform plan'
alias tfpl='terraform plan | landscape'
alias tfa='terraform apply'
alias tfaa='terraform apply -auto-approve'
alias tfs='terraform show'
alias tfd='terraform destroy'
alias tfda='terraform destroy -auto-approve'
alias tfc='terraform console'
alias tfo='terraform output'

# TERRAGRUNT
alias tg='terragrunt'
alias tgv'terraform validate'
alias tgi='terragrunt init'
alias tgp='terragrunt plan'
alias tga='terragrunt apply'
alias tgaa='terragrunt apply -auto-approve'
alias tgd='terragrunt destroy'
alias tgda='terragrunt destroy -auto-approve'
alias tgc='terragrunt console'
