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
bash-completion zsh-completion  tree curl tmux
nmap
gist


[//]: # (╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣)
[//]: # (╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣)


brew install --cask tableplus


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
brew install --cask **套件**
brew cleanup —-prune 0
- 更新標記可更新的 app  
`brew update`
- 更新所有非最新的 app  
`brew upgrade`


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
# 系統

- 程式監控  
`brew install --cask sloth`  
- 完全解除安裝  
`brew install --cask appcleaner`  
- 系統設定備份  
`brew install mackup`
- 麥克風、攝影機，安全監控  
`brew install --cask oversight`  
- 隱藏選單列  
`brew install --cask hiddenbar`  
- 截圖  
`brew install --cask snipaste`  
- 壓縮  
`brew install --cask the-unarchive`  
- 隨身硬碟  
`brew install --cask mounty`  


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
# 介面

- 視窗分割控制  
`brew install --cask spectacle`
- 鍵盤快捷鍵修改  
`brew install --cask karabiner-elements`


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
#### 辦公

- 文字編輯  
`brew install --cask textmate`  
- 文書處理  
`brew install jq`  
`brew install rsync`  
`brew install watch`  
`brew install --cask typora`  
`brew install --cask evernote`  
`brew install --cask teamviewer`  
`brew install --cask send-anywhere`  
`brew install --cask google-backup-and-sync`  
- 瀏覽器
`brew install --cask opera`  
`brew install --cask google-chrome`  
- 通訊
`brew install --cask discord`
`brew install --cask slack`  


<!-- ╠═══╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═════╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═╬═══╣ -->
#### 開發

- 文字編輯  
`brew install vim`  
`brew install nano`  
`brew install --cask atom`  
`brew install --cask visual-studio-code`  
`brew install --cask vnc-viewer`
- 版本控制輔助  
`brew install --cask fork`  
`brew install --cask https://raw.githubusercontent.com/Homebrew/homebrew-cask/6a96e5ea44803e52a43c0c89242390f75d1581ab/Casks/kdiff3.rb  # kdiff3`  
- 主機管理  
`brew install --cask termius`  
`brew install google-cloud-sdk`  
`brew install kubectl`  
- 網路管理  
`brew install --cask wireshark`  
- 容器  
`brew install --cask docker`  
- API 調適  
`brew install --cask postman`  


#### 開發 - 資料庫

- for all databases  
`brew install --cask dbeaver-community`
- for MySQL  
`brew install --cask sequel-pro`
- for ER Modeling  
  <!-- name: lanyu -->
  <!-- key: 9bbd2251619a1b92966d0d48950df85f03520 -->
`brew install --cask dbschema`
- for influxDB  
`brew install --cask grafana`


[x] iTerm 2


[x] Python 3  -  settings


[x] Python 3  -  pip
brew install python@3.9
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
