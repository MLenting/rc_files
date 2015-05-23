#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -la'
alias ..='cd ..'

#alias off='vboxmanage controlvm Windows\ XP\ professional savestate && systemctl poweroff -i'
alias off='systemctl poweroff -i'
alias suspend='systemctl suspend'
alias hibernate='systemctl hibernate'
alias reboot='systemctl reboot'

alias start_dhcp='sudo systemctl start dhcpcd@enp0s8'
alias update='packer -Syu --noedit --noconfirm'
alias cronietail='tail -20 /var/log/cronie/backup.log'

alias pi='ssh serverpi'

alias Dropbox='cd /home/Data/Dropbox'
alias Copy='cd /home/Data/Copy'

alias Film='cd /home/Data/Film'
alias Download='cd /home/Data/Download'
alias Music='cd /home/Data/Music'

orphans() {
   if [[ ! -n $(pacman -Qdt) ]]; then
     echo "No orphans to remove."
   else
     sudo pacman -Rns $(pacman -Qdtq)
   fi
}

PS1='[\u@\h \W]\$ '
