return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Couleur du header (ASCII)
        vim.api.nvim_set_hl(0, "AlphaHeader", {
            fg = "#000000",
            bg = "NONE",
        })

        dashboard.section.header.val = {
[[                                      ..:::.                         ]],
[[                                   .:#@@@@@@@*.                      ]],
[[                                 .+@@@@@###%+@@:                     ]],
[[                                .-@@@@@@*#--%@@%=                    ]],
[[                               .+@@@@@@@+%..+@%=                     ]],
[[                               .*@@@@@@%#@#+                         ]],
[[                             .*%%@@@@@@@**@.                         ]],
[[                           .%+-@@@@@@@@@@+:@:                        ]],
[[                          :%@+*%@@@@@@%#+=%@:                        ]],
[[                          #**@@#*==--=*#@@@*+                        ]],
[[                     ...-%@*:...............+%@=..                   ]],
[[                   :##-:=#%@%%=:-#:::=#+*%@%*-.-#%-                  ]],
[[               .:***#@@@@@*.*@@@@@@ @@@@@@@.+@@@@*+**-.              ]],
[[              :%@@@@@@@@#:.+@@@@@@. @@@@@*@*..*@@@@@@*%=.            ]],
[[              .#@@@@@@*.-%#@@@@@@**@@@-=@@@@%%=.@@@%##*@=            ]],
[[                 ...:=*.=@@@.@@@@@@@@@@@@#@@@@#.*+-:...              ]],
[[                     ..:=*==..@@@@@@@@@@@@@@==**..                   ]],
[[                                                                     ]],
[[ ,---.   .--.   .-''-.     ,-----.   ,---.  ,---.-./`),---.    ,---. ]],
[[ |    \  |  | .'_ _   \  .'  .-,  '. |   /  |   \ .-.'|    \  /    | ]],
[[ |  ,  \ |  |/ ( ` )   '/ ,-.|  \ _ \|  |   |  ./ `-' |  ,  \/  ,  | ]],
[[ |  |\_ \|  . (_ o _)  ;  \  '_ /  | |  | _ |  | `-'`"|  |\_   /|  | ]],
[[ |  _( )_\  |  (_,_)___|  _`,/ \ _/  |  _( )_  | .---.|  _( )_/ |  | ]],
[[ | (_ o _)  '  \   .---: (  '\_/ \   \ (_ o._) / |   || (_ o _) |  | ]],
[[ |  (_,_)\  |\  `-'    /\ `"/  \  ) / \ (_,_) /  |   ||  (_,_)  |  | ]],
[[ |  |    |  | \       /  '. \_/``".'   \     /   |   ||  |      |  | ]],
[[ '--'    '--'  `'-..-'     '-----'      `---`    '---''--'      '--' ]],
        }

        dashboard.section.header.opts.hl = "AlphaHeader"

        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
        }

        local handle = io.popen("fortune")
        local fortune = handle:read("*a")
        handle:close()

        dashboard.section.footer.val = fortune

        dashboard.config.opts.noautocmd = true

        vim.cmd([[autocmd User AlphaReady echo 'ready']])

        alpha.setup(dashboard.config)
    end,
}
