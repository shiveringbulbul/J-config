# 路徑、變量
## /etc/environment
為 /etc/path 的上層配置
```bash
# 預設僅有此行
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
```
## /etc/path
盡量操作此配置檔案而非 /etc/environment
```bash
# PostgreSQL 11
/usr/local/opt/postgresql@11/bin
```


# 設定、配置
## /etc/profile
每個用戶 ～/.profile 的上層配置
## ~/.profile
```bash
if [ -d"$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi
```
## ~/.bash_profile
bash_profile is executed for login shells\
觸發套用配置：使用 ssh 登入
```bash
#
```
## ~/.bashrc
bashrc is executed for interactive non-login shells\
觸發套用配置：未有登入動作
```bash
# 互動式介面時套用配置
# alias p="python3"
```
