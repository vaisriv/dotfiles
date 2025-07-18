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
            text =
                # json
                ''
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
                                            "description": "right_command plus hjkl -> arrow keys",
                                            "manipulators": [
                                                {
                                                    "from": {
                                                        "key_code": "h",
                                                        "modifiers": {
                                                            "mandatory": ["right_command"],
                                                            "optional": ["any"]
                                                        }
                                                    },
                                                    "to": [
                                                        {
                                                            "key_code": "left_arrow",
                                                            "modifiers": []
                                                        }
                                                    ],
                                                    "type": "basic"
                                                },
                                                {
                                                    "from": {
                                                        "key_code": "j",
                                                        "modifiers": {
                                                            "mandatory": ["right_command"],
                                                            "optional": ["any"]
                                                        }
                                                    },
                                                    "to": [
                                                        {
                                                            "key_code": "down_arrow",
                                                            "modifiers": []
                                                        }
                                                    ],
                                                    "type": "basic"
                                                },
                                                {
                                                    "from": {
                                                        "key_code": "k",
                                                        "modifiers": {
                                                            "mandatory": ["right_command"],
                                                            "optional": ["any"]
                                                        }
                                                    },
                                                    "to": [
                                                        {
                                                            "key_code": "up_arrow",
                                                            "modifiers": []
                                                        }
                                                    ],
                                                    "type": "basic"
                                                },
                                                {
                                                    "from": {
                                                        "key_code": "l",
                                                        "modifiers": {
                                                            "mandatory": ["right_command"],
                                                            "optional": ["any"]
                                                        }
                                                    },
                                                    "to": [
                                                        {
                                                            "key_code": "right_arrow",
                                                            "modifiers": []
                                                        }
                                                    ],
                                                    "type": "basic"
                                                }
                                            ]
                                        },
                                        {
                                            "description": "set caps_lock to f3 in minecraft",
                                            "manipulators": [
                                                {
                                                    "conditions": [
                                                        {
                                                            "file_paths": ["lunarclient.*java$", "PrismLauncher.*java$"],
                                                            "type": "frontmost_application_if"
                                                        }
                                                    ],
                                                    "from": {
                                                        "key_code": "caps_lock",
                                                        "modifiers": {}
                                                    },
                                                    "to": {
                                                        "key_code": "f3",
                                                        "modifiers": []
                                                    },
                                                    "type": "basic"
                                                }
                                            ]
                                        },
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
                                    },
                                    {
                                        "identifiers": {
                                            "is_keyboard": true,
                                            "product_id": 8455,
                                            "vendor_id": 16700
                                        },
                                        "simple_modifications": [
                                            {
                                                "from": { "key_code": "left_command" },
                                                "to": [{ "key_code": "left_option" }]
                                            },
                                            {
                                                "from": { "key_code": "left_option" },
                                                "to": [{ "key_code": "left_command" }]
                                            }
                                        ]
                                    },
                                    {
                                        "identifiers": {
                                            "is_keyboard": true,
                                            "product_id": 24729,
                                            "vendor_id": 6127
                                        },
                                        "simple_modifications": [
                                            {
                                                "from": { "key_code": "left_command" },
                                                "to": [{ "key_code": "left_option" }]
                                            },
                                            {
                                                "from": { "key_code": "left_option" },
                                                "to": [{ "key_code": "left_command" }]
                                            }
                                        ]
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
