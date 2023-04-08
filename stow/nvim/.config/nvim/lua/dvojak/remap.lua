vim.g.mapleader = ' '
vim.g.maplocalleader = ' '			-- TODO
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

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



-- show whitespaces
vim.api.nvim_set_keymap('n', '<leader>tw', ':lua vim.wo.list = not vim.wo.list<CR>', { noremap = true, silent = true })

