# import bashrc
source ~/.oh-my-zsh/oh-my-zsh.sh
# import bashrc
source ~/.bashrc





# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '



# 快捷指令後，欲加參數
alias one_line_example='f(){ echo FIRST arg is "$1" SECOND arg is "$2" ALL are "$@";  unset -f f;}; f'
# 快捷指令後，使用 if 判斷
some_command() {
  if [[ $@ == "argv1 argv2" ]]; then
    command echo "argv2" "argv1"
  else
    echo $@
  fi
}
# 快捷指令後，使用 case 判斷
some_command() {
  case $1 in
    "abc")
      echo "abc"
    ;;
    "def")
      echo "def"
    ;;
    "ijk" | "xyz")
      echo $1
    ;;
    *)
      echo "anything"
    ;;
  esac
}
