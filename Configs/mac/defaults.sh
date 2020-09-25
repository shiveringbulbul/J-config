# 啟用文件預覽，文字選取功能
defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder
# 關閉此設定
defaults delete com.apple.finder QLEnableTextSelection; killall Finder

# 編輯右鍵選單
open /System/Library/Services

# 加快 Dock 顯示速度
defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
# 恢復預設
defaults delete com.apple.dock autohide-time-modifier; killall Dock


# 移除他媽醜的要死的搜尋唉抗
# 先關閉 System Integrity Protection 後再執行以下指令
cd /System/Library/CoreServices/Spotlight.app/Contents/MacOS
sudo mv Spotlight.bak Spotlight
sudo killall Spotlight
# 記得再開啟 SIP
