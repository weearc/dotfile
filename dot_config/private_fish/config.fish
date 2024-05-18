set -x  PATH $PATH /home/ddqi/bin
set -gx PATH $PATH /home/ddqi/bin/flutter/bin
set -gx PATH $PATH /home/ddqi/.bin
set -gx PATH $PATH /usr/bin
set -gx PATH $PATH /home/ddqi/.local/bin
set -gx PATH $PATH /home/ddqi/bin/jdk/bin
set -gx PATH $PATH /home/ddqi/bin/peazip
set -gx MANPATH $PATH /usr/local/texlive/2019/texmf-dist/doc/man
set -gx INFOPATH $PATH /usr/local/texlive/2019/texmf-dist/doc/info
set -gx PATH $PATH /usr/local/texlive/2019/bin/x86_64-linux
set -gx EDITOR $EDITOR /usr/bin/nvim
set -gx PATH $PATH /home/ddqi/.local/share/dotnet
set -gx DOTNET_ROOT $DOTNET_ROOT /home/ddqi/.local/share/dotnet

set -gx ATUIN_NOBIND "true"
atuin init fish | source
bind \cf _atuin_search
bind -M insert \cf _autin_search


alias bc="bc -l"
alias czm="chezmoi"
alias neofetch="fastfetch"

#nvm use v11.14.0
#set -gx PATH $PATH /opt/miniconda/bin

alias winetricks="winetricks --gui=zenity --country=CN"



clear
