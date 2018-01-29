alias ..="cd .."

alias g='git '
alias gl='git log --color --no-merges'
alias gtt='git status'
alias gs='git stash -k -u'
alias gpop='git stash pop'

alias gcb='git checkout -b'
alias gco='git checkout'
alias gpo='git push --follow-tags origin'

alias gh="open \`git config -l | grep --color=never 'remote.origin.url' | sed -En 's/remote.origin.url=git(@|:\/\/)github.com(:|\/)(.+)\/(.+).git/https:\/\/github.com\/\3\/\4/p'\`"

alias gbclean='for x in `g branch | grep -v master`; do g branch -d $x; done'

tagdelete(){ g tag -d $1; g push origin :refs/tags/$1; }
alias gtagdelete='tagdelete'

# ansible
alias aplay='ansible-playbook main.yml -i '

# minikube
alias minikube-start='minikube start --vm-driver xhyve --insecure-registry localhost:5000'
alias minikube-docker='eval $(minikube docker-env)'
alias minikube-docker-rollback='eval $(minikube docker-env -u)'

# docker

# remove untagged images
alias docker-rmi-none='docker rmi $(docker images | grep "^<none>" | awk '"'"'{print $3}'"'"')'
#remove all stopped containers
alias docker-rm-stopped='docker rm $(docker ps -a -q)'
