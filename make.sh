#!/bin/sh

files="
bash_aliases
bash_profile
bashrc
ctags
gitconfig
gitignore_global
profile
sbtrc
tmux
tmux.conf
zprofile
zshrc
"

verbose(){
  echo "$@"
  "$@"
}

# Make symlinks
for f in $files; do
  src="$(pwd)/$f"
  dst="~/.$f"
  verbose ln -sf $(pwd)/$f ~/.$f
done

# Make link for keyboard layout
verbose ln -sf $(pwd)/Emacs_beats_vi.keylayout ~/Library/Keyboard\ Layouts/
