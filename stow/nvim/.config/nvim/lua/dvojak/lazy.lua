local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

local telescope = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    -- or                              , branch = '0.1.x',
    dependencies = {'nvim-lua/plenary.nvim'}
}
local colorscheme = {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
        style = "moon"
    }
}
local treesitter = {
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate'
}
local undotree = {"mbbill/undotree"}
local vimfugitive = {"tpope/vim-fugitive"}
local lsp = { --- Uncomment the two plugins below if you want to manage the language servers from neovim
{'williamboman/mason.nvim'}, {'williamboman/mason-lspconfig.nvim'}, {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x'
}, {'neovim/nvim-lspconfig'}, {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/nvim-cmp'}, {'L3MON4D3/LuaSnip'}}
local conform = {
    'stevearc/conform.nvim',
    dependencies = {"mason.nvim"},
    lazy = true,
    cmd = "ConformInfo",
    opts = {}
    
}
require("lazy").setup({telescope, colorscheme, treesitter, undotree, vimfugitive, lsp, "lewis6991/gitsigns.nvim",
                       {"nvim-treesitter/nvim-treesitter-context"}, conform})

