# +--------+
# | Finder |
# +--------+
# 啟用文件預覽 + 文字選取設定
defaults write com.apple.finder QLEnableTextSelection -bool TRUE
killall Finder
# 停用文件預覽 + 文字選取設定
defaults delete com.apple.finder QLEnableTextSelection
killall Finder

# +-------+
# | 啟動台 |
# +-------+
# 設置列欄軟體數
defaults write com.apple.dock springboard-rows -int 7
defaults write com.apple.dock springboard-columns -int 7
killall Dock
# 恢復原始設置
defaults write com.apple.dock springboard-rows Default
defaults write com.apple.dock springboard-columns Default
killall Dock

# +------+
# | Dock |
# +------+
# 加快 Dock 顯示速度
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock
# 恢復預設
defaults delete com.apple.dock autohide-time-modifier
killall Dock
