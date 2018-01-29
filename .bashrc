export EDITOR=atom

export LANG=en_US.UTF-8
export LANGUAGE=en_US
export LC_ALL=en_US.UTF-8

# add ssh keys to agent, needed after macos sierra
ssh-add -K 2> /dev/null

# link nvm in shell
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# needed to load aws binary
export PATH=~/Library/Python/2.7/bin:$PATH

# add kubernetes zsh auto completion
source <(kubectl completion zsh)

# add appfactory contexts
export KUBECONFIG=~/.kube/config:~/.kube/appfactory_config
