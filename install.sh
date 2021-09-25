# Check /workspaces/.codespaces/.persistedshare/creation.log for possible issues. 

if [ "$CODESPACES" = "true" ]; then
  wget -O $HOME/.oh-my-zsh/custom/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme
  git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  cp -f /workspaces/.codespaces/.persistedshare/dotfiles/.zshrc $HOME/.zshrc
  source $HOME/.zshrc
  sudo chsh -s /usr/bin/zsh
fi
