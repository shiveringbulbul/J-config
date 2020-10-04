關閉 Alt + f4

disable ctrl shift q


工作管理員 活動監視器 系統工具

markdown title
git log gitignore docker




win applications
Win A 通知
Win m Hide
Win D desktop
Win U utilities
Win L Lock


受影響的termail
lafm
g finder



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
