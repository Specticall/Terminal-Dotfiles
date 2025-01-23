return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', -- Automatically run :TSUpdate after installation
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { "lua" }, -- Specify languages you want parsers for
        sync_install = false,        -- Parsers are installed asynchronously
        auto_install = true,         -- Automatically install missing parsers
        highlight = { enable = true }, -- Enable syntax highlighting
      })
    end,
  }
