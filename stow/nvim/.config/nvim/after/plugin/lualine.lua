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

require('bufferline').setup({
    options = {
        indicator = {
            --icon = "P"
        }
    }
})
