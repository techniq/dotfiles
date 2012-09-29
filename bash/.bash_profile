export PATH=/usr/local/bin:~/android-sdks/platform-tools:/usr/local/mysql/bin:$PATH
export PYTHONPATH=/Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine:/usr/local/lib/python2.7/site-packages:$PYTHONPATH
# Temporary workaround for virtualenv issues
# export PYTHONPATH=$PYTHONPATH:~/Development/virtualenv/gae-env27/lib/python2.7/site-packages

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

if [ -f $HOME/.bash_prompt ]; then
  source $HOME/.bash_prompt
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
# https://gist.github.com/774554
source ~/.bash_completion.d/brew_completer.sh

# Git
alias git=hub
export GIT_EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -gf '
# if [ -f ~/.hub.bash_completion.sh ]; then . ~/.hub.bash_completion.sh; fi

# Virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
# To tell pip to only run if there is a virtualenv currently activated, and to bail if not
# export PIP_REQUIRE_VIRTUALENV=true       

# Color Python nosetests
export NOSE_REDNOSE=1

alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
export EDITOR='subl -w'