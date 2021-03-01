#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export GPG_TTY=$(tty)

if [ -z $DISPLAY ] && [ "$(tty)" == "/dev/tty1" ] && [ -z "$(uname -r | grep -i zen)" ]; then
	exec sway
fi
if [ -z $DISPLAY ] && [ "$(tty)" == "/dev/tty1" ] && [ -n "$(uname -r | grep -i zen)" ]; then
	exec startx
fi
