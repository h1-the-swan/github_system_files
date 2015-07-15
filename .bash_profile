#  To use this .bash_profile create a symlink to it in the home directory
#  ln -s ~/github_system_files/.bash_profile ~/.bash_profile

# Enable colors for the directory listing
alias ls='ls -GFh'
# The 'G' option enables the coloring
# The 'F' option adds '/' for directories, '|' for pipes, '@' for symlinks (and others?)
# The 'h' option formats file sizes in human readable units
#
# Change colors to look better on black background:
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Fixing rubber for latex:
# https://github.com/oracleyue/rubber-for-LaTeX
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/:${PYTHONPATH}



##
# Your previous /Users/jporteno/.bash_profile file was backed up as /Users/jporteno/.bash_profile.macports-saved_2015-03-15_at_11:24:01
##

# MacPorts Installer addition on 2015-03-15_at_11:24:01: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Set PATH for LaTeX
export PATH="/usr/local/texlive/2014basic/bin/x86_64-darwin:$PATH"


alias httpserver="python -m SimpleHTTPServer"



# Set the prompt to show the current git branch:
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "|git("${ref#refs/heads/}")" 
}

PS1="\h:\w$RED \$(parse_git_branch)$NO_COLOR $ "



# Enable git tab completion in bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
