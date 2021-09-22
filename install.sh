if [ "$CODESPACES" = "true" ]; then
  wget -O $ZSH_CUSTOM/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

  echo "source /workspaces/.codespaces/.persistedshare/dotfiles/rc" >> $HOME/.zshrc
  sudo chsh -s /usr/bin/zsh
fi
