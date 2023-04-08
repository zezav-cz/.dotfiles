require('nvim-treesitter.configs').setup {
    ensure_installed = { "go", "c_sharp", "cpp", "dockerfile", "jq", "json", "python", "sql", "yaml", "c", "lua", "vim", "query" },
    auto_install = true,          -- Auto install mising parser when in buffer

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
    indent = {      -- Auto indent when new line ...
        enable = true,
        disable = { 'yaml' }
    },
  }
