-- ZEN MODE
PluginSetUp(function()
    vim.keymap.set("n", "<leader>ez", function()
        require("zen-mode").setup {
            window = {
                width = 90,
                options = {}
            },
        }
        require("zen-mode").toggle()
        vim.wo.wrap = false
        vim.wo.number = true
        vim.wo.rnu = true
    end)
    vim.keymap.set("n", "<leader>eZ", function()
        require("zen-mode").setup {
            window = {
                width = 80,
                options = {}
            },
        }
        require("zen-mode").toggle()
        vim.wo.wrap = false
        vim.wo.number = false
        vim.wo.rnu = false
        vim.opt.colorcolumn = "0"
    end)
end, { 'zen-mode' })

-- LUA LINE
PluginSetUp(function()
    local function tab_info()
        local tab_size = vim.bo.tabstop
        local expand_tabs = vim.bo.expandtab

        local char
        if expand_tabs then
            char = "␣" -- You can change "S" to any symbol you like to represent spaces
        else
            char = "\\t" -- You can change "T" to any symbol you like to represent tabs
        end

        return string.format("%d%s", tab_size, char)
    end
    require('lualine').setup({
        options = {
            icons_enabled = false,
            theme = 'onedark',
            component_separators = '|',
            section_separators = '',
        },
        sections = {
            lualine_x = { tab_info, 'encoding', 'fileformat', 'filetype' }
        }
    })
end, { 'lualine' })

-- COLORTHEME
PluginSetUp(function()
    require('onedark').setup {
        style = 'darker'
    }
    require('onedark').load()
end, { 'onedark' })

-- GIT SIGNS
PluginSetUp(function()
    require('gitsigns').setup {
        signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },
        },
    }
end, { 'gitsigns' })

-- BUFFERLINE
PluginSetUp(function()
    require("bufferline").setup{}
end, { 'bufferline' })