{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  home.file = {
    karabiner-elements-config = {
      enable = true;

      target = ".config/karabiner/karabiner.json";
      text = ''
        {
            "global": {
                "check_for_updates_on_startup": false,
                "show_in_menu_bar": false
            },
            "profiles": [
                {
                    "complex_modifications": {
                        "rules": [
                            {
                                "description": "Caps Lock to Esc and Ctrl",
                                "manipulators": [
                                    {
                                        "from": {
                                            "key_code": "caps_lock",
                                            "modifiers": { "optional": ["any"] }
                                        },
                                        "to": [{ "key_code": "left_control" }],
                                        "to_if_alone": [{ "key_code": "escape" }],
                                        "type": "basic"
                                    }
                                ]
                            }
                        ]
                    },
                    "devices": [
                        {
                            "identifiers": {
                                "is_keyboard": true,
                                "product_id": 801,
                                "vendor_id": 13364
                            },
                            "ignore": true
                        },
                        {
                            "identifiers": {
                                "is_keyboard": true,
                                "product_id": 43141,
                                "vendor_id": 13991
                            },
                            "ignore": true
                        }
                    ],
                    "name": "Default profile",
                    "selected": true,
                    "virtual_hid_keyboard": { "keyboard_type_v2": "ansi" }
                }
            ]
        }
      '';
    };
  };
}
