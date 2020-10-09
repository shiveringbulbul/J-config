關閉 Alt + f4

disable ctrl shift q


工作管理員 活動監視器 系統工具




1. 我的readme專案 markdown title
2. 我的word文件 folder structer redesign
3. 整理我的專案版本 硬碟版本


open -a Preview.app /Users/jackal/Desktop/Coding/Jackalization/configurations/karabiner/src/up.png


win applications   -


受影響的termail
d 全部縮小回到桌面
f spotlight         -
m 縮小
l 鎖定
a 通知               -
g finder 中的GOTO    -
u 系統工具            -



{
  "type": "basic",
  "conditions": [
    {
      "type": "variable_if",
      "name": "fn-mode",
      "value": 1
    }
  ],
  "from": {
      "key_code": "0"
  },
  "to": [
    {
      "key_code": "fn"
    }
  ]
},
{
  "type": "basic",
  "from": {
    "key_code": "0"
  },
  "to": [
    {
      "set_variable": {
        "name": "fn-mode",
        "value": 1
      }
    }
  ],
  "to_delayed_action": {
    "to_if_invoked": [
      {
        "set_variable": {
          "name": "fn-mode",
          "value": 0
        }
      }
    ],
    "to_if_canceled": [
      {
        "set_variable": {
          "name": "fn-mode",
          "value": 0
        }
      }
    ]
  }
}

{
  "type": "basic",
  "from": {
    "key_code": "tab",
    "modifiers": {
      "mandatory": [
        "command"
      ]
    }
  },
  "to": [
    {
      "key_code": "vk_none"
    }
  ]
},
{
  "type": "basic",
  "from": {
    "key_code": "tab",
    "modifiers": {
      "mandatory": [
        "left_option"
      ]
    }
  },
  "to": [
    {
      "key_code": "tab",
      "modifiers": [
        "left_command"
      ]
    }
  ]
},




"shell_command": "open -a Activity\\ Monitor.app"
"shell_command": "/System/Library/Input\\ Methods/CharacterPalette.app"
