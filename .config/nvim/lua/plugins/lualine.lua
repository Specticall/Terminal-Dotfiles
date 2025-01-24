-- Set lualine as statusline

return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local colors = {
        
      vertsplit      = '#181A1F',
      special_grey   = '#3B4048',
      menu_grey      = '#3E4452',
      cursor_grey    = '#1e1e2e',
      gutter_fg_grey = '#4B5263',
      blue           = '#82b1ff',
      dark_red       = '#BE5046',
      white          = '#e1e7f2',
      green          = '#C3E88D',
      purple         = '#5358ed',
      yellow         = '#ffcb6b',
      light_red      = '#ff869a',
      red            = '#ff5370',
      dark_yellow    = '#F78C6C',
      cyan           = '#89DDFF',
      comment_grey   = '#697098',
      black          = '#1e1e2e',
    }
    
    local palenight_theme = {
      normal = {
        a = { fg = colors.white, bg = colors.purple, gui = 'bold' },
        b = { fg = colors.purple, bg = colors.menu_grey },
        c = { fg = colors.comment_grey, bg = colors.black },
      },
      insert = {
        a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
        b = { fg = colors.blue, bg = colors.menu_grey },
      },
      visual = {
        a = { fg = colors.black, bg = colors.cyan, gui = 'bold' },
        b = { fg = colors.cyan, bg = colors.menu_grey },
      },
      replace = {
        a = { fg = colors.black, bg = colors.green, gui = 'bold' },
        b = { fg = colors.green, bg = colors.menu_grey },
      },
      inactive = {
        a = { fg = colors.black, bg = colors.menu_grey, gui = 'bold' },
        b = { fg = colors.black, bg = colors.menu_grey },
        c = { fg = colors.black, bg = colors.menu_grey },
      },
    } 
    -- Import color theme based on environment variable NVIM_THEME
    local env_var_nvim_theme = os.getenv 'NVIM_THEME' or 'nord'

    -- Define a table of themes
    local themes = {
      palenight = 'palenight',
      nord = 'nord',
    }

    local mode = {
      'mode',
      fmt = function(str)
        -- return ' ' .. str:sub(1, 1) -- displays only the first character of the mode
        return ' ' .. str
      end,
    }

    local filename = {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0,           -- 0 = just filename, 1 = relative path, 2 = absolute path
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = false,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored = false,
      symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
      cond = hide_in_width,
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'palenight', -- Set theme based on environment variable
        -- Some useful glyphs:
        -- https://www.nerdfonts.com/cheat-sheet
        --        
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'neo-tree', 'Avante' },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { 'branch' },
        lualine_c = { filename },
        lualine_x = { diagnostics, diff, { 'encoding', cond = hide_in_width }, { 'filetype', cond = hide_in_width } },
        lualine_y = { 'location' },
        lualine_z = { 'progress' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'fugitive' },
    }
  end,
}
