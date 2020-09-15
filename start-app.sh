#!/bin/bash
: '
App Initiating
'

if [ -z ${1+x} ]
  then echo -e "\e[31m---- Warning:\e[0m Please input app name."
fi
# app_name=$1

# echo $a

RED='\033[0;31m'
NC='\033[0m' # No Color
# Continued from above example
echo -e "I ${RED}love${NC} Stack Overflow"


# 使用 ANSI escape code 設定背景顏色
tput setab [ 1-7 ]
# 使用 ANSI escape code 設定文字顏色
tput setaf [ 1-7 ]



tput bold：進入粗體模式。
tput dim：進入低亮度（half-bright）模式。
tput smul：進入下底線模式。
tput rmul：結束下底線模式。
tput rev：開始反相模式。
tput smso：進入 standout 模式。
tput rmso：結束 standout 模式。
tput sgr0：結束所有的模式。


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${red}red text ${green}green text${reset}"

Color     Value       RGB
black       0     0, 0, 0
red         1     1, 0, 0
green       2     0, 1, 0
yellow      3     1, 1, 0
blue        4     0, 0, 1
magenta     5     1, 0, 1
cyan        6     0, 1, 1
white       7     1, 1, 1
