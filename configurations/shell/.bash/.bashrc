# --------------
# ----  OS  ----
# --------------
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias delhis="cat /dev/null > ~/.bash_history && history -c && exec $SHELL -l"
alias shut="sudo shutdown -h now"
alias rebo="sudo reboot"
alias hosts="sudo vim /etc/hosts"
alias remem="sudo su -l root -c 'sync; echo 1 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a'"
alias bs="brew services"

# alias exshow='f(){ echo before "$1" after "$2" all "$@";  unset -f f;}; f'
# some os that you can detect °C
# alias hot="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"
# alias hot="vcgencmd measure_temp"

# ----------------
# ----  File  ----
# ----------------
alias ll="ls -l"
alias la="ls -al"
alias home="cd ~/Desktop"
alias treegod="tree -I '__pycache__|static' -L 3 -F --charset utf8"
alias vi="vim"

# ---------------
# ----  git  ----
# ---------------
alias gitall="git add --all"
alias gitrecommit="git commit --amend"
alias gitfpull="git pull --allow-unrelated-histories"
alias gitfpush="git push --force"
alias gitlog="git log --all --graph --oneline"
alias gitgui="gitk"

# ------------------
# ----  Python  ----
# ------------------
alias p="python3"
alias pip="pip3"
alias po="poetry"
alias porun="poetry run"
alias posh="poetry shell"
alias pserver="python3 -m http.server"

# ------------------
# ----  Django  ----
# ------------------
alias p="python3"
alias dj="python3 manage.py"
alias djr="python3 manage.py runserver --insecure 0.0.0.0:80"
alias djc="python3 manage.py collectstatic --clear"
alias djcls="python3 manage.py clear_cache && sudo python36 manage.py clean_pyc && sudo find . -type d -name '__pycache__' -exec rm -r {} +"
alias djs="python3 manage.py runscript"

# ----------------------
# ----  Web Server  ----
# ----------------------
alias html='cd /var/www/html'
alias rhttpd='sudo systemctl restart httpd'


# ---------------------
# ——  Quick Start  ----
# ---------------------
alias comp="docker-compose"
alias compup="docker-compose up -d"
alias compdown="docker-compose down"
dexec() { docker exec -it $@ sh }
alias dockerdf="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage -sV=1.36"
alias 2**專案**="source /Users/jackal/Desktop/**專案**"
