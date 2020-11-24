# ╔══════════╗
# ╠  system  ╣
# ╚══════════╝
alias shut="sudo shutdown -h now"
alias rebo="sudo reboot"
alias hosts="sudo vim /etc/hosts"
alias remem="sudo su -l root -c 'sync; echo 1 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a'"
alias bs="brew services"


# ╔═══════════╗
# ╠  history  ╣
# ╚═══════════╝
alias hisdel="cat /dev/null > ~/.bash_history && history -c && exec $SHELL -l"
his() { history | tail -1024 | grep "$@" | less }
alias his10="hisotry -10 -1"
alias his20="hisotry -20 -1"
alias hisoff="HISTSIZE=0"
alias histsize"echo $HISTSIZE"


# ╔══════════╗
# ╠  folder  ╣
# ╚══════════╝
alias cdcd="cd ../.."
alias cdcdcd="cd ../../.."
alias dirs="dirs -v"
alias ll="ls -l"
alias la="ls -al"
alias vi="vim"
alias home="cd ~/Desktop"
alias jtree="tree -I '__pycache__|static' -L 3 -F --charset utf8"
alias jserver="python3 -m http.server --bind 0.0.0.0 4444"


# ╔═══════╗
# ╠  git  ╣
# ╚═══════╝
alias gitall="git add --all"
alias gitrecommit="git commit --amend"
alias gitfpull="git pull --allow-unrelated-histories"
alias gitfpush="git push --force-with-lease"
alias gitlog="git log --all --graph --oneline"
alias git7="git rev-parse --short HEAD"
alias gitgui="gitk"


# ╔══════════╗
# ╠  python  ╣
# ╚══════════╝
alias p="python"
alias rmpycache="find . -type d -name '__pycache__' -exec rm -r {} +"
alias po="poetry"
alias posh="poetry shell"


# ╔══════════╗
# ╠  django  ╣
# ╚══════════╝
alias djr="python3 manage.py runserver --insecure 0.0.0.0:80"
alias djc="python3 manage.py collectstatic --clear"
alias djcls="python3 manage.py clear_cache"
alias djscript="python3 manage.py runscript"


# ╔══════════╗
# ╠  docker  ╣
# ╚══════════╝
alias dockerdf="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage -sV=1.36"
alias comp="docker-compose"
alias compup="docker-compose up -d"
alias compdown="docker-compose down"
dexec() {
  if [ "$2" = "" ]
  then
    docker exec -it bash
  else
    docker exec -it $@
  fi
}


# ╔═════════╗
# ╠  quick  ╣
# ╚═════════╝
# alias 2**專案**="cd /Users/jackal/Desktop/**專案**"
pj() { cd "/Users/jackal/Desktop/$@" }
