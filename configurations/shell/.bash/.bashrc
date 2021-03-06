# ╔══════════╗
# ╠  system  ╣
# ╚══════════╝
alias shut="sudo shutdown -h now"
alias rebo="sudo reboot"
alias hosts="less /etc/hosts"
alias myip="echo -e \"Global  IP: $(curl -s ipinfo.io/ip)\nPrivate IP: $(ipconfig getifaddr en0)\""
alias jalias="less ~/.bashrc"


# ╔═══════════╗
# ╠  history  ╣
# ╚═══════════╝
alias hisdel="cat /dev/null > ~/.bash_history && history -c && exec $SHELL -l"
his() { history | tail -1024 | grep "$@" | less }
alias his10="history -10 -1"
alias his20="history -20 -1"
alias hisoff="HISTSIZE=0"
alias histsize"echo $HISTSIZE"


# ╔════════════╗
# ╠  homebrew  ╣
# ╚════════════╝
alias bs="brew services"


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
alias gitlog="git log --all --graph --oneline --color=always | less"
alias gitls="git log --color=always | less"
alias git7="git rev-parse --short HEAD"
alias gitremote="git remote prune gitlab && git branch -r"
alias gitgui="gitk"
ssh-add ~/.ssh/id_ed25519-github 2> /dev/null
ssh-add ~/.ssh/id_ed25519-gitlab 2> /dev/null

# ╔══════════╗
# ╠  python  ╣
# ╚══════════╝
alias p="python3"
alias pip="pip3"
alias rmpycache="find . -type d -name '__pycache__' -exec rm -r {} +"
alias po="poetry"
alias posh="poetry shell"


# ╔══════════╗
# ╠  django  ╣
# ╚══════════╝
alias djr="python3 manage.py runserver --insecure 0.0.0.0:80"
alias djsh="python3 manage.py shell_plus"
alias djc="python3 manage.py collectstatic --clear"
alias djcls="python3 manage.py clear_cache"
alias djscript="python3 manage.py runscript"


# ╔══════════╗
# ╠  docker  ╣
# ╚══════════╝
alias dockerdf="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage -sV=1.36"
drun() {
  docker run --name $1 -it ${@:2}
}
dexec() {
  if [ $# -le 1 ]
  then
    docker exec -it $1 sh 2> /dev/null || docker exec -it $1 bash
  else
    docker exec -it $@
  fi
}
dcls() {
  if [ ! $# -eq 1 ]; then
    echo dcls all
    echo dcls container
    echo dcls image
    echo dcls volume
  else
    if [ "$1" = "all" ]; then
      docker container prune -f
      docker image rm $(docker image ls -qf dangling=true) 2> /dev/null || echo No image need to remove.
      docker volume rm $(docker volume ls -qf dangling=true) 2> /dev/null || echo No volume need to remove.
    elif [ "$1" = "container" ]; then
      docker container prune -f
    elif [ "$1" = "image" ]; then
      docker image rm $(docker image ls -qf dangling=true) 2> /dev/null || echo No image need to remove.
    elif [ "$1" = "volume" ]; then
      docker volume rm $(docker volume ls -qf dangling=true) 2> /dev/null || echo No volume need to remove.
    else
      echo dcls all
      echo dcls container
      echo dcls image
      echo dcls volume
    fi
  fi
}


# ╔══════════╗
# ╠  docker  ╣
# ╚══════════╝
alias comp="docker-compose"
alias compup="docker-compose up -d"
alias compdown="docker-compose down"
alias comprodup="docker-compose --env-file=./secrets/.env -f docker-compose.yml -f docker-compose.prod.yml up -d"
alias comprodown="docker-compose --env-file=./secrets/.env -f docker-compose.yml -f docker-compose.prod.yml down"


# ╔═══════╗
# ╠  GCP  ╣
# ╚═══════╝
unalias gcp
gce() {
  gcloud compute ssh $@
}
gcescp() {
  gcloud compute scp --recurse $@
}
gcr() {
  if [ $# -eq 0 ]
  then
    gcloud container images list --repository=asia.gcr.io/$(gcloud config get-value project)
  else
    gcloud container images list-tags $1
  fi
}
gs() {
  gsutil ls
}
unalias gke
gke() {
  if [ $# -eq 0 ]
  then
    echo "
      gcloud config list
      gcloud container clusters list
      gcloud container clusters get-credentials <cluster-name> --zone <zone>
    "
  elif [ "$1" = "ls" ]
  then
    gcloud container clusters list
  fi
}


# ╔════════╗
# ╠  Kube  ╣
# ╚════════╝
alias kb="kubectl"
alias kball="kubectl get all"
alias kbing="kubectl get ing"
alias kbrs="kubectl get replicaset"
alias kbdep="kubectl get deployment"
alias kbsvc="kubectl get svc"
alias kbpod="kubectl get pod"
kbrscls() {
  kubectl delete $(kubectl get all | grep replicaset.apps | grep "0         0         0" | cut -d " " -f 1)
}
kbexec() {
  if [ $# -eq 1 ]
  then
    kubectl exec -it $1 -- sh
  elif [ $# -eq 2 ]
  then
    kubectl exec -it $1 --container=$2 -- sh
  else
    echo kubectl exec -it \<\$1\> --container=\<\$2\> -- sh
  fi
}
kbwatch() {
  if [ $# -eq 0 ]
  then
    watch -bcn 5 "kubectl get pods"
  else
    watch -bcn 5 "kubectl get $@"
  fi
}
kbsec() {
  if [ $# -eq 0 ]
  then
    kubectl get secret
  else
    echo "
      kubectl edit secret <secret-name>
      kubectl create secret generic <secret-name> \\
        --from-literal=<key>=<value> --from-literal=<key>=<value>
    "
  fi
}


# ╔═════════╗
# ╠  quick  ╣
# ╚═════════╝
# alias 2**專案**="cd /Users/jackal/Desktop/<project>"
pj() { cd "/Users/jackal/Desktop/$@" }
# tmp bind control U to backward-kill-line on MacOS
bindkey \^U backward-kill-line
