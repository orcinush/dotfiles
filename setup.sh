#!/bin/sh

DOTFILE_DIR="$(cd "$(dirname $0)" && pwd)"

main() {
  cd "$DOTFILE_DIR"
  for FILE in .??* ; do
    if [ "$FILE" = ".git" ]; then
      continue
    elif [ "$FILE" = ".vim" ]; then
      setup_vim
    elif [ "$FILE" = ".local" ]; then
      mkdir -p ~/.local
      ln -snf "$DOTFILE_DIR"/.local/bin ~/.local/bin
    elif [ "$FILE" = ".gitignore" ]; then
      mkdir -p ~/.config/git
      ln -snf "$DOTFILE_DIR/$FILE" ~/.config/git/ignore
    else 
      ln -snf "$DOTFILE_DIR/$FILE" ~/"$FILE"
    fi
  done

}

setup_vim() {
  ln -snf "$DOTFILE_DIR"/.vim ~/.vim
  ln -snf "$DOTFILE_DIR"/.vim ~/.config/nvim

  mkdir -p ~/Library/Caches/vim/backup
  mkdir -p ~/Library/Caches/vim/swp
  mkdir -p ~/Library/Caches/vim/undo

  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

main
