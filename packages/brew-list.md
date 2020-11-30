[x] Homebrew
# cask 管理器 ->  軟體會顯示在啟動器中
brew install caskroom/cask/brew-cask

brew pin python  # 鎖定 Python 版本
brew update


- `brew update` will update the list of available formulae
- `brew upgrade` will upgrade any outdated packages




brew cask upgrade
brew cask list
brew cask zap [package]



brew install wget git git-gui
htop wget tldr
tig
dos2unix
pandoc
gpg
bash-completion zsh-completion nmap tree curl tmux

gist


[//]: # (╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣)
[//]: # (╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣)


brew cask install tableplus


# ╔════════════╗
# ╠  Homebrew  ╣
# ╚════════════╝
- 安裝 Homebrew  
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)”
- 安裝 cask  -  for GUI applications  
brew install caskroom/cask/brew-cask


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
# Usage

brew info **套件**
brew search **套件**
brew cask install **套件**
brew cleanup —-prune 0
- 更新標記可更新的 app  
`brew update`
- 更新所有非最新的 app  
`brew upgrade`


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
# 系統

- 程式監控  
`brew cask install sloth`  
- 完全解除安裝  
`brew cask install appcleaner`  
- 系統設定備份  
`brew install mackup`
- 麥克風、攝影機，安全監控  
`brew cask install oversight`  
- 隱藏選單列  
`brew cask install hiddenbar`  
- 截圖  
`brew cask install snipaste`  
- 壓縮  
`brew cask install the-unarchive`  
- 隨身硬碟  
`brew cask install mounty`  


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
# 介面

- 視窗分割控制  
`brew cask install spectacle`
- 鍵盤快捷鍵修改  
`brew cask install karabiner-elements`


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
#### 辦公

- 文字編輯  
`brew cask install textmate`  
- 文書處理  
`brew install jq`  
`brew install rsync`  
`brew cask install typora`  
`brew cask install evernote`  
`brew cask install teamviewer`  
`brew cask install send-anywhere`  
`brew cask install google-backup-and-sync`  
- 瀏覽器
`brew cask install opera`  
`brew cask install google-chrome`  
- 通訊
`brew cask install slack`  


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
#### 開發

- 文字編輯  
`brew install vim`  
`brew install nano`  
`brew cask install atom`  
`brew cask install visual-studio-code`  
- 版本控制輔助  
`brew cask install fork`  
`brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/6a96e5ea44803e52a43c0c89242390f75d1581ab/Casks/kdiff3.rb  # kdiff3`  
- 主機管理  
`brew cask install termius`  
`brew install google-cloud-sdk`  
`brew install kubectl`  
- 網路管理  
`brew cask install wireshark`  
- 容器  
`brew cask install docker`  
- API 調適  
`brew cask install postman`  


#### 開發 - 資料庫

- for all databases  
`brew cask install dbeaver-community`
- for MySQL  
`brew cask install sequel-pro`
- for ER Modeling  
  <!-- name: lanyu -->
  <!-- key: 9bbd2251619a1b92966d0d48950df85f03520 -->
`brew cask install dbschema`
- for influxDB  
`brew cask install grafana`


[x] iTerm 2


[x] Python 3  -  settings


[x] Python 3  -  pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --force-reinstall


[x] Node.js
```bash
$ brew install node
$ npm install -g npx
```


[x] Kite
brew install kite

[x] Redis


[x] PostgreSQL 11


[x] MySQL
# 設定 MySQL
brew install mysql
vim /usr/local/bin/mysql_config

# 設定 openssl
brew install openssl
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# MySQL relink
brew unlink mysql
brew link --overwrite mysql-connector-c
brew unlink mysql-connector-c
brew link --overwrite mysql
