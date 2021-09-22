if [ "$CODESPACES" = "true" ]; then
  echo "source /workspaces/.codespaces/.persistedshare/dotfiles/rc" >> $HOME/.zshrc
  sudo chsh -s /usr/bin/zsh
fi
