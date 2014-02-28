# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dallas"

# z.sh
#. `brew --prefix`/etc/profile.d/z.sh

# Functions
server() {
    python -m SimpleHTTPServer $1
}

nginx_restart() {
    sudo nginx -s stop;
        sudo nginx;
}

f5() {
	exec $SHELL
}

psd() {
	open -a /Applications/Adobe\ Photoshop\ CS6/Adobe\ Photoshop\ CS6.app/
}

mou() {
	open -a /Applications/Mou.app $1
}

at() {
  open -a /Applications/Atom.app $1
}

st() {
  open -a /Applications/Sublime \ Text.app $1
}

clearcache() {
	sudo rm /var/log/asl/*.asl
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"


# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github svn ruby rails python terminator sublime node)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/bin:/usr/local/sbin:$PATH
export LANG=en_US.UTF-8
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
