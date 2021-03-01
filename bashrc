#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

build_prompt() {
	if [ $? -ne 0 ]
	then
		PS1='[\u@\h\[\033[01;33m\] $?\[\033[00m\] \W]\$ '
	else
		PS1='[\u@\h \W]\$ '
	fi
}
PROMPT_COMMAND="build_prompt"
alias ls='ls -lh --color=always'
alias less='less -r'
alias c=' clear'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
HISTCONTROL=ignoreboth
export EDITOR=vim
export XDG_CURRENT_DESKTOP=sway
#alias evince='GTK_THEME=Adwaita:dark evince'
#alias mpv='mpv --hwdec=auto'
alias mkdir='mkdir -p'
alias firetest='MOZ_ENABLE_WAYLAND=1 MOZ_LOG="PlatformDecoderModule:5" GTK_THEME=Adwaita:dark firefox &> /home/eric/foxlog'
source /usr/share/doc/pkgfile/command-not-found.bash
shopt -s autocd
source /usr/share/bash-completion/bash_completion
#alias orkill='pacman -Qtdq | pacman -Rns -'
export INPUT_METHOD=ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx
alias xalac='env WINIT_UNIX_BACKEND=x11 alacritty'
#set -o noclobber
alias locate='/usr/bin/plocate'
#alias mlocate='/usr/bin/locate'
alias listy-boy='ls'
alias sudo='sudo '
alias updatedb='sudo /usr/bin/updatedb'
alias dater='date +"%a %d %b %Y %T %Z"'
alias cp='cp --reflink=auto -i'
alias mv='mv -i'
alias microsoft-edge-dev='microsoft-edge-dev -enable-features=UseOzonePlatform -ozone-platform=wayland'
alias ssha='eval $(ssh-agent)'
