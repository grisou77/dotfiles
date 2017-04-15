# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

umask 0002

alias ls='ls -G'
alias dir='ls -Gg'

# some more ls aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias dnscacheclear='sudo killall -HUP mDNSResponder'
alias sshdev='ssh andrea@andrea.youniversalmedia.intra'
alias sshdev-in='ssh -i ~/.ssh/you_aws_in.pem ubuntu@52.48.17.135'
alias sshdeploy='ssh -i ~/.ssh/you_aws.pem lorusso@52.213.142.45'
alias mountdev='sshfs andrea@andrea.youniversalmedia.intra:/home/andrea/site /Users/lorusso/dev'
alias sshindev='ssh -i ~/.ssh/andrea_at_yncloud andrea@devel.yncloud.intra'

export PATH=$HOME/bin:$PATH
