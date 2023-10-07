-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

-- set tabsize
function set_tab_options(tab_size, use_spaces)
    vim.bo.tabstop = tab_size
    vim.bo.shiftwidth = tab_size

    if use_spaces then
        vim.bo.expandtab = true
    else
        vim.bo.expandtab = false
    end
end

vim.api.nvim_set_keymap('n', '<leader>ts2', ':lua set_tab_options(2, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ts4', ':lua set_tab_options(4, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ts8', ':lua set_tab_options(8, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tt2', ':lua set_tab_options(2, false)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tt4', ':lua set_tab_options(4, false)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tt8', ':lua set_tab_options(8, false)<CR>', { noremap = true, silent = true })
