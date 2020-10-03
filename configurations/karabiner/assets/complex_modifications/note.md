關閉 Alt + f4

disable ctrl shift q


工作管理員 活動監視器 系統工具



win applications
Win A 通知
Win m Hide
Win D desktop
Win U utilities
Win L Lock



{
  "description": "【 Addition 】=: =|Fn",
  "manipulators": [
    {
      "type": "basic",
      "from": {
        "simultaneous": [
          {
            "key_code": "hyphen"
          },
          {
            "key_code": "equal_sign"
          }
        ]
      },
      "to": {
        "key_code": "fn"
      }
    }
  ]
}

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
