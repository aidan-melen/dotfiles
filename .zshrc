# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="codespaces"
ZSH_THEME="common"

plugins=(
zsh-autosuggestions
zsh-syntax-highlighting
pyenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias hostfile="sudo vim /etc/hosts"
alias sshconfig="vim ~/.ssh/config"

# MAKE TERMINAL BETTER
mcd () {
    mkdir -p "$1"
    cd "$1"
}

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
alias gce='git commit --allow-empty -m "This is an empty commit. Likely to trigger a CI/CD pipeline that is stalled."'
alias gpb='git push --set-upstream origin $(git_current_branch)'

# PYTHON
alias pyhton='py'
alias pyhton='python'

# DOCKER
alias d='docker'
alias dokcer='docker'
alias di='docker images'
alias dst='docker start'
alias dsp='docker stop'
alias dps='docker ps'
alias dp='docker push'
alias dpl='docker pull'
alias drm='docker rm'
alias drmi='docker rmi'
alias docker-clear='docker system prune --all'

# MAKE
alias m='make'
alias mb='make build' # popular target for building docker images
alias mr='make run' # popular target for running docker containers
alias md='make dev' # popular target for run a docker container and get a shell

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
alias tgv='terraform validate'
alias tgi='terragrunt init'
alias tgivpf='terragrunt init --verify-plugins=false'
alias tgp='terragrunt plan'
alias tga='terragrunt apply'
alias tgaa='terragrunt apply -auto-approve'
alias tgd='terragrunt destroy'
alias tgda='terragrunt destroy -auto-approve'
alias tgc='terragrunt console'

# KUBERNETES
alias k='kubectl'
alias kaf='kubectl apply -f'
alias kdelf='kubectl delete -f'

# Workspaces
alias ws='cd /workspaces'
alias scratch='cd /workspaces/scratch'
alias ps-data='cd /workspaces/ps-data'
alias ps-dev='cd /workspaces/ps-dev'
alias ps-ops='cd /workspaces/ps-ops'

# AWS
alias keyman='aws_okta_keyman'
