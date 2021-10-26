# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="codespaces"
ZSH_THEME="common"

# https://github.com/joshjon/bliss-dircolors
DISABLE_LS_COLORS="false"
LS_COLORS='no=00:rs=0:fi=00:di=38;5;218;01:ln=38;5;115:mh=04;38;5;115:pi=48;5;137:so=48;5;137:do=48;5;137:bd=38;5;222;04:cd=38;5;222;01:ex=01:ow=38;5;153;01:st=48;5;67:tw=48;5;30:or=48;5;167;:su=38;5;210;04:sg=38;5;180;04:ca=00:*.tar=38;5;147;01:*.tgz=38;5;147;01:*.arj=38;5;147;01:*.taz=38;5;147;01:*.lzh=38;5;147;01:*.lzma=38;5;147;01:*.tlz=38;5;147;01:*.txz=38;5;147;01:*.zip=38;5;147;01:*.z=38;5;147;01:*.Z=38;5;147;01:*.dz=38;5;147;01:*.gz=38;5;147;01:*.lz=38;5;147;01:*.xz=38;5;147;01:*.bz2=38;5;147;01:*.bz=38;5;147;01:*.tbz=38;5;147;01:*.tbz2=38;5;147;01:*.tz=38;5;147;01:*.deb=38;5;147;01:*.rpm=38;5;147;01:*.jar=38;5;147;01:*.rar=38;5;147;01:*.ace=38;5;147;01:*.zoo=38;5;147;01:*.cpio=38;5;147;01:*.7z=38;5;147;01:*.rz=38;5;147;01:*.apk=38;5;147;01:*.gem=38;5;147;01:*.tex=00:*.rdf=00:*.owl=00:*.n3=00:*.ttl=00:*.nt=00:*.torrent=00:*.xml=00:*Makefile=00:*Rakefile=00:*Dockerfile=00:*build.xml=00:*rc=00:*1=00:*.nfo=00:*README=00:*README.txt=00:*readme.txt=00:*.md=00:*README.markdown=00:*.ini=00:*.yml=00:*.cfg=00:*.conf=00:*.h=00:*.hpp=00:*.c=00:*.cpp=00:*.cxx=00:*.cc=00:*.objc=00:*.sqlite=00:*.go=00:*.sql=00:*.csv=00:*.jpg=38;5;229:*.JPG=38;5;229:*.jpeg=38;5;229:*.gif=38;5;229:*.bmp=38;5;229:*.pbm=38;5;229:*.pgm=38;5;229:*.ppm=38;5;229:*.tga=38;5;229:*.xbm=38;5;229:*.xpm=38;5;229:*.tif=38;5;229:*.tiff=38;5;229:*.png=38;5;229:*.PNG=38;5;229:*.svg=38;5;229:*.svgz=38;5;229:*.mng=38;5;229:*.pcx=38;5;229:*.dl=38;5;229:*.xcf=38;5;229:*.xwd=38;5;229:*.yuv=38;5;229:*.cgm=38;5;229:*.emf=38;5;229:*.eps=38;5;229:*.CR2=38;5;229:*.ico=38;5;229:*.aac=38;5;193:*.au=38;5;193:*.flac=38;5;193:*.mid=38;5;193:*.midi=38;5;193:*.mka=38;5;193:*.mp3=38;5;193:*.mpc=38;5;193:*.ogg=38;5;193:*.opus=38;5;193:*.ra=38;5;193:*.wav=38;5;193:*.m4a=38;5;193:*.axa=38;5;193:*.oga=38;5;193:*.spx=38;5;193:*.xspf=38;5;193:*.mov=38;5;222:*.MOV=38;5;222:*.mpg=38;5;222:*.mpeg=38;5;222:*.m2v=38;5;222:*.mkv=38;5;222:*.ogm=38;5;222:*.mp4=38;5;222:*.m4v=38;5;222:*.mp4v=38;5;222:*.vob=38;5;222:*.qt=38;5;222:*.nuv=38;5;222:*.wmv=38;5;222:*.asf=38;5;222:*.rm=38;5;222:*.rmvb=38;5;222:*.flc=38;5;222:*.avi=38;5;222:*.fli=38;5;222:*.flv=38;5;222:*.gl=38;5;222:*.m2ts=38;5;222:*.divx=38;5;222:*.webm=38;5;222:*.axv=38;5;222:*.anx=38;5;222:*.ogv=38;5;222:*.ogx=38;5;222:*.log=38;5;248:*.bak=38;5;248:*.aux=38;5;248:*.lof=38;5;248:*.lol=38;5;248:*.lot=38;5;248:*.out=38;5;248:*.toc=38;5;248:*.bbl=38;5;248:*.blg=38;5;248:*~=38;5;248:*#=38;5;248:*.part=38;5;248:*.incomplete=38;5;248:*.swp=38;5;248:*.tmp=38;5;248:*.temp=38;5;248:*.o=38;5;248:*.pyc=38;5;248:*.class=38;5;248:*.cache=38;5;248:';
export LS_COLORS

# Configure Git
git config --global user.name "Aidan Melen"
git config --global user.email "aidan-melen@pluralsight.com"

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

# PYTHON
alias pyhton='py'
alias pyhton='python'

# DOCKER
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
alias tgp='terragrunt plan'
alias tga='terragrunt apply'
alias tgaa='terragrunt apply -auto-approve'
alias tgd='terragrunt destroy'
alias tgda='terragrunt destroy -auto-approve'
alias tgc='terragrunt console'

# KUBERNETES
alias k='kubectl'
alias kaf='kubctl apply -f'
alias kdelf='kubctl delete -f'
