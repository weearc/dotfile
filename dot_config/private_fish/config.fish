set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
powerline-setup
set -x  PATH $PATH /home/ddqi/bin
set -gx PATH $PATH /home/ddqi/bin/go/bin
set -x -U GOPATH $HOME/go
set -gx PATH $PATH /home/ddqi/bin/flutter/bin
set -gx PATH $PATH /home/ddqi/.bin
set -gx PATH $PATH /home/ddqi/.local/bin
set -gx PATH $PATH /home/ddqi/bin/jdk/bin
set -gx PATH $PATH /home/ddqi/bin/peazip
set -gx MANPATH $PATH /usr/local/texlive/2019/texmf-dist/doc/man
set -gx INFOPATH $PATH /usr/local/texlive/2019/texmf-dist/doc/info
set -gx PATH $PATH /usr/local/texlive/2019/bin/x86_64-linux
nvm use v11.14.0
set -gx EDITOR $EDITOR /usr/bin/vim
clear
alias bc="bc -l"
nvm use v11.14.0

set -gx PATH $PATH /opt/miniconda/bin

