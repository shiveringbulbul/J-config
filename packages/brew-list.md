[x] Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)”
# cask 管理器 ->  軟體會顯示在啟動器中
brew install caskroom/cask/brew-cask

brew pin python  # 鎖定 Python 版本
brew update
brew cask upgrade
brew [cask] list

brew info **套件**
brew search **套件**
brew cask install **套件**
brew cleanup —-prune 0 && brew cask cleanup —-prune 0
brew install wget git git-gui
htop wget tldr
tig
dos2unix
pandoc
gpg
bash-completion zsh-completion nmap tree curl tmux

gist
omniplan



brew cask install send-anywhere

brew cask install tableplus


# +-----+
# | 系統 |
# +-----+
- 程式監控
brew cask install sloth
- 麥克風與攝影機安全監控
brew cask install oversight
- 完全解除安裝
brew cask install appcleaner
- 截圖
brew cask install snipaste
- 壓縮
brew cask install the-unarchive
- 隨身硬碟
brew cask install mounty


# +-----+
# | 介面 |
# +-----+
- 視窗分割控制
brew cask install spectacle
- 鍵盤快捷鍵修改
brew cask install karabiner-elements



# +-----+
# | 辦公 |
# +-----+
- 文字編輯
brew cask install textmate

brew cask install typora
brew cask install evernote
brew cask install opera
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install teamviewer



# +-----+
# | 開發 |
# +-----+
- 文字編輯
brew install vim
brew install nano
brew cask install atom
brew cask install visual-studio-code
- 版本控制輔助
brew cask install fork
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/6a96e5ea44803e52a43c0c89242390f75d1581ab/Casks/kdiff3.rb  # kdiff3
- 容器
brew cask install docker
- API 調適
brew cask install postman



# +-----+
# | 開發 | - 資料庫
# +-----+
# for all databases
brew cask install dbeaver-community
# for MySQL
brew cask install sequel-pro
# for ER Modeling
  # name: lanyu
  # key: 9bbd2251619a1b92966d0d48950df85f03520
brew cask install dbschema
# for influxDB
brew cask install grafana


[x] iTerm 2


[x] Python 3  -  settings


[x] Python 3  -  pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --force-reinstall



[x] Kite
brew install kite

[x] Redis


[x] PostgreSQL 11


[x] MySQL
# 設定 MySQL
brew install mysql
vim /usr/local/bin/mysql_config
'''
libs="-L$pkglibdir"
libs="$libs -lmysqlclient -lssl -lcrypto”
'''

# 設定 openssl
brew install openssl
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# MySQL relink
brew unlink mysql
brew link --overwrite mysql-connector-c
brew unlink mysql-connector-c
brew link --overwrite mysql
