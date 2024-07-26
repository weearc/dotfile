set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx XDG_CACHE_HOME $HOME/.cache

# xdg-ninja advice
#
# [android]: /home/ddqi/.android
set -gx ANDROID_USER_HOME "$XDG_DATA_HOME"/android
alias adb='HOME="$XDG_DATA_HOME"/android adb'

# [cuda]: /home/ddqi/.nv
set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME"/nv

# [docker]: /home/ddqi/.docker
set -gx DOCKER_CONFIG "$XDG_CONFIG_HOME"/docker

# [dosbox]: /home/ddqi/.dosbox
alias dosbox=dosbox -conf "$XDG_CONFIG_HOME"/dosbox/dosbox.conf

# [dotnet]: /home/ddqi/.dotnet
set -gx DOTNET_CLI_HOME "$XDG_DATA_HOME"/dotnet


