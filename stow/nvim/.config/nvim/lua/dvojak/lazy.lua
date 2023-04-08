require('lazy').setup({

    'mbbill/undotree',
    'navarasu/onedark.nvim', -- Theme inspired by Atom
    --'tpope/vim-sleuth',     -- Detect tabstop and shiftwidth automatically,
    'lukoshkin/trailing-whitespace',

    -- ==================== GIT ====================
    'tpope/vim-fugitive',    --git
    --'tpope/vim-rhubarb',  --github
    'lewis6991/gitsigns.nvim', -- Adds git releated signs to the gutter, as well as utilities for managing changes

    -- =============== FILE EXPLORER ===============
    {
    -- Fuzzy Finder (files, lsp, etc)
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    'theprimeagen/harpoon',

    -- ===== HIGHLIGHT, EDIT, AND NAVIGATE CODE ====
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        config = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
    },
    'nvim-treesitter/nvim-treesitter-context', -- keeps last definition (funsciont...) in view


    -- ==================== LSP ====================
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                                 -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },          -- Required
            { 'hrsh7th/cmp-nvim-lsp' },      -- Required
            { 'L3MON4D3/LuaSnip' },          -- Required
        }
    },
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end,
    },


    -- ================== EDITOR ==================
    {
    -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'onedark',
                component_separators = '|',
                section_separators = '',
            },
        },
    },



    'windwp/nvim-autopairs',
    'akinsho/bufferline.nvim',
    --  {
    --    'folke/trouble.nvim',
    --    requires = 'nvim-tree/nvim-web-devicons',
    --  },
}, {})
