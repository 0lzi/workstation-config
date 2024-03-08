# Export
export MYUSER=user.name
export MYPASS=pass.word

# Alias
alias dcp='docker-compose up -d '
alias dcpull='docker-compose pull'
alias diprune='docker image prune'
alias dcstop='docker stop $(docker ps -a -q)'
alias dcrem='docker rm $(docker ps -a -q)'
alias dclogs='docker-compose -f /opt/docker-compose.yml logs -tf --tail="50" '
alias dtail='docker logs -tf --tail="50" "$@"'
alias untar='tar -zxvf '
alias newkey='ssh-keygen -t ed25519'
alias konect="sshpass -p $MYPASS ssh -q"
alias k="kubectl"
alias wgup="sudo wg-quick up wg0"
alias wgdown="sudo wg-quick down wg0"
alias wgs="sudo wg"
alias vi="nvim"
alias vim="nvim"

# Alias to fix lsblk snap loop devices on Ubuntu
alias lsblk="lsblk | grep -v loop*"# Auto git pull when changing to folder

# Function to do a git pull when in a specified folder
#function cd() {
#    builtin cd "$@"
#    if [ "$PWD" = "/home/USER/GIT_FOLDER" ]; then
#        git pull
#    fi
#}
