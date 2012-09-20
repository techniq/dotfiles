# git branch = $(__git_ps1 " (%s)")
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
# export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
export PS1="\[\e[34;1m\]\u\[\e[32;1m\]@\h \[\e[31;1m\]\w/\[\e[0m\]"'$(__git_ps1 " (%s)")'" \$ "
# export PS1="\[\e[34;1m\]\u\[\e[32;1m\]@\h \[\e[31;1m\]\w/\[\e[0m\]"'$(parse_git_dirty)'" \$ "
# \h:\W \u\$

export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export PATH=/usr/local/bin:~/android-sdks/platform-tools:/usr/local/mysql/bin:$PATH

# Add Google appengine to path
export PYTHONPATH=/Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine:/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Temporary workaround for virtualenv issues
# export PYTHONPATH=$PYTHONPATH:~/Development/virtualenv/gae-env27/lib/python2.7/site-packages

export GIT_EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -gf '

# https://gist.github.com/774554
source ~/.bash_completion.d/brew_completer.sh

# Virtualenvwrapper
export WORKON_HOME=~/Development/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

# Color Python nosetests
export NOSE_REDNOSE=1

alias git=hub
