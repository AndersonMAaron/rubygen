############## Git ##############
. ~/.git-completion.bash #https://github.com/git/git/blob/master/contrib/completion/git-completion.bash


############## Navigation and File System ##############
# Go to repos home
alias repo='cd ~/repos'

# List
alias ll='ls -la'
alias la='ls -A'

# Query rpm for files it contains
alias rpmq='rpm -q -filesbypkg -p'

# Output file permissions in XXX format
alias f_permission='stat -c %a'

# Output disk space and usage
alias diskspace="du -S | sort -n -r |more"

# Unpack file by file type
function extract () {
 if [ -f $1 ] ; then
     case $1 in
         *.tar.bz2)   tar xvjf $1    ;;
         *.tar.gz)    tar xvzf $1    ;;
         *.bz2)       bunzip2 $1     ;;
         *.rar)       unrar x $1     ;;
         *.gz)        gunzip $1      ;;
         *.tar)       tar xvf $1     ;;
         *.tbz2)      tar xvjf $1    ;;
         *.tgz)       tar xvzf $1    ;;
         *.zip)       unzip $1       ;;
         *.Z)         uncompress $1  ;;
         *.7z)        7z x $1        ;;
         *)           echo "don't know how to extract '$1'..." ;;
     esac
 else
     echo "'$1' is not a valid file!"
 fi
}


############## Vagrant ##############
alias vsh='vagrant ssh'

function vrestore () {
  vagrant destroy -f $* && vagrant up $*
}


############## Ruby ##############
# Build and install all gemspecs in current directory
alias grb='gem build *.gemspec; gem install *.gem --user-install'


############## Python ##############
# Start simple web server on port 1234
alias pyweb='python -m SimpleHTTPServer 1234'


############## Random ##############
alias hey='echo "Why are you talking to me? I am a computer."'
alias IAMROOT='echo "WE. ARE ROOT"'
