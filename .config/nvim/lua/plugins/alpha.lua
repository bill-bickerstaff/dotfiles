return {
	"goolord/alpha-nvim",
	-- dependencies = { 'echasnovski/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"  ░                           █                    ▀     ",
			"  ░░           █░           ░░█    ██              ▀▀    ",
			"  ░░    ¬█    ██░ █     █░  ░█     █░ ▓█          ▀▀▀    ",
			"  █░░░¬  █┘ ╘▬█░░ █     █░┴ ░█═╜   █░  █──┘      ▀▀☼▀▀   ",
			"   █░░¬  █    █░  █══┘  █░░ ░█═╜   █░  █        ▀▀▀▀▀▀   ",
			"    █░   █  ╘▬█░  █═┘   ██░  █  ╘──█░  █        ▀ ▀▀▀▀▀  ",
			"  └▬█░   █    █░  █    ╚─█░  █╜  ┌─█░  █─┘      ▀▀▀▀▀▀▀  ",
			" └▬▬█░   █⌐┘  █░  █   ╚─═█░  █═─   █░░ █        ▀▀▀▀▀▀ ▀ ",
			"    █░   █    █░  █═     █░  █      █░ █─┘     ▀▀▀▀▀▀▀▀▀ ",
			"    █░   █    █░  █    ╚═█╚ ─█═─╜   █░ ██      ▀ ▀▀ ▀▀▀▀ ",
			" └▬▬█░  ¬█⌐¬  █░░ █      █░  █    ╘─█░  █───┘    ▀▀ ▀▀ ▀ ",
			"  └▬█░   █  ╘▬██░ █   ╚─═█░  █═╜ ╘──█░░ █──┘     ▀▀ ▀▀   ",
			"    █░   █    ██░ ██     █╚  ██     █░  █─┘      ▀   ▀   ",
			" └▬▬ ░¬  █     █░  █══┘  █░   █   ╘═█░  █        ▀   ▀   ",
			"  └▬█░ ¬ █─┘ ╘▬█░  █    ╘█░░╘≡█══  ┌█══  █           ▀   ",
			"    █░   █≡┘   █░  ██  ╘═█═░  █─┘   █░   █               ",
			"   └█░   █╧╧┘ ██░   █    █░░  ██   ██░   █               ",
			"   ██░   ██   █░░   ██   █░░   █   █░░    █              ",
			"   █░░░   █  █░░     █   █░░   █  ██░  ¬  █              ",
			"   █░░░   █  █░      █ ███░░   █  █░░ ¬   █              ",
			"            ██░░     █ ██░░░      █░░     ██             ",
			"                                                        ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("p", "projects", ":Telescope projects<CR>", { silent = true }),
			dashboard.button("r", "recent", ":Telescope oldfiles<CR>", { silent = true }),
			dashboard.button("t", "sessions", ":Telescope tmux sessions<CR>", { silent = true }),
			dashboard.button("e", "cwd", ":Oil<CR>", { silent = true }),
			dashboard.button("c", "config", ":e ~/.config/nvim/init.lua<CR>", { silent = true }),
			dashboard.button("q", "quit", ":qa<CR>", { silent = true }),
		}

		local handle = io.popen("fortune")
		local fortune = handle:read("*a")
		handle:close()
		dashboard.section.footer.val = fortune

		dashboard.config.opts.noautocmd = true

		alpha.setup(dashboard.config)
	end,
}
