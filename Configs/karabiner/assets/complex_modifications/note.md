關閉 Alt + f4

空白被刪除


工作管理員 活動監視器 系統工具



tab = win + shift
- + = fn


{
  "type": "basic",
  "from": {
    "key_code": "a"
  },
  "from": {
    "key_code": "escape",
    "modifiers": {
      "mandatory": [
        "command",
        "option"
      ]
    }
  }
},
{
  "type": "basic",
  "from": {
    "key_code": "m",
    "key_code": "o",
    "modifiers": {
      "mandatory": [
        "caps_lock"
      ]
    }
  },
  "to":{
    "shell_command": "open -a Activity\\ Monitor.app"
  }
}
