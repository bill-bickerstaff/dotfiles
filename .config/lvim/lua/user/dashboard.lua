local alpha                  = require("alpha")
local dashboard              = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
  "          █                  ██           ",
  "         ████   ███████████  ██           ",
  "          █████             ██            ",
  "         ███                 ██           ",
  "       ██     ███           ████          ",
  "       █    ██ █        ███  ███          ",
  "     ████  ██  █        █  ██ █████       ",
  "   ██   █████  █        █  ████   ███     ",
  "  █   █ █  ██  █        █  ███    █   █   ",
  "  █   █  █  █  █        █  ██    █    █   ",
  "  █   █ ██ ██  ███████████ █   █ ██   █   ",
  "  █   █ █████  ██       ██ █   ██ █   █   ",
  "  █   █ ██ ██  █         █ ██ █████   █   ",
  "  █   █    ██  █  █    █ █  █     █   █   ",
  "  █   ██   ██  █    ██   █   █    █   █   ",
  "   ██    ██  ███          █    █     ██   ",
  "    ████ ████              ███ ██ ███     ",
  "      ██  ███                 ███ █       ",
  "      ██  ███                ███  █       ",
  "      ██    ███████████████  █    █       ",
  "      ██   ██                █    █       ",
  "      ██    █  ████          █    █       ",
  "       █    █   ███   ████   █    █       ",
  "       ██   █         ███    ██  █        ",
  "        ████                   ███        ",
  "                                          ",
  "                                          ",
}



dashboard.section.buttons.val = {
  dashboard.button("f", lvim.icons.ui.FindFile .. "  Find File", "<CMD>Telescope find_files<CR>"),
  dashboard.button("n", lvim.icons.ui.NewFile .. "  New File", "<CMD>ene!<CR>"),
  dashboard.button("p", lvim.icons.ui.Project .. "  Projects ", "<CMD>Telescope projects<CR>"),
  dashboard.button("c", lvim.icons.ui.Gear .. "  Configuration",
    "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>"),
  dashboard.button("q", lvim.icons.ui.Close .. "  Quit", "<CMD>quit<CR>"),
}


local time = os.date("%H:%M")
local date = os.date("%a %d %b")

function CenterText(text, width)
  local totalPadding = width - #text
  local leftPadding = math.floor(totalPadding / 2)
  local rightPadding = totalPadding - leftPadding
  return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
end

dashboard.section.footer.val = {
  " ",
  CenterText("Signed in as Midnight Commander", 50),
  " ",
  CenterText(date, 50),
  CenterText(time, 50),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
