vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

--vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "110"

-- kistart

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
-- vim.o.breakindent = true


-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
--vim.wo.signcolumn = 'yes'

-- Decrease update time
--vim.o.updatetime = 250
--vim.o.timeout = true
--vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
--vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
--vim.o.termguicolors = true

vim.opt.listchars = {
    eol = '↲',      -- End of line
    tab = '▸ ',     -- Tab character
    trail = '·',    -- Trailing spaces
    extends = '»',  -- Beyond the end of the line
    precedes = '«', -- Before the start of the line
    space = '␣',    -- Space character
}
