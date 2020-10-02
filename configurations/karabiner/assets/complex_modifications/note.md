關閉 Alt + f4

-= = fn

use f19 as mandatory

工作管理員 活動監視器 系統工具



win applications
Win A 通知
Win .   emoji
Win m Hide
Win D desktop
Win U utilities
Win L Lock


{
  "description": "【 Application 】Hyper + A/pplications",
  "manipulators": [
    {
      "type": "basic",
      "from": {
        "key_code": "a",
        "modifiers": {
          "mandatory": [
            "left_command",
            "left_control",
            "left_option",
            "left_shift"
          ]
        }
      },
      "to": [
        {
          "shell_command": "open -a Launchpad.app"
        }
      ]
    }
  ]
},



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
