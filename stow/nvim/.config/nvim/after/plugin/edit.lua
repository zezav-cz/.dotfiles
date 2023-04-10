-- AUTOPAIR
PluginSetUp(function()
    require('nvim-autopairs').setup({
        check_ts = true,
        disable_filetype = {
            'TelescopePrompt',
            'vim'
        },
    })
end, { 'nvim-autopairs' })
