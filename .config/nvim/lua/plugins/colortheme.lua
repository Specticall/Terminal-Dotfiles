-- return {
--     "catppuccin/nvim", 
--     name = "catppuccin", 
--     priority = 1000,
--     config = function()
--     	require("catppuccin").setup({
--           flavour = 'latte', -- latte, frappe, macchiato, mocha
--           background = { -- :h background
--               light = "latte",
--               dark = "mocha",
--           },
--           transparent_background = true, -- disables setting the background color.
--           show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--           term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       })   
--     end
--   }

-- return { 
--   "JoosepAlviste/palenightfall.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--         require('palenightfall').configure_colors({
--           green = '#b0e69a',
--         })	
-- 	require('palenightfall').setup({
-- 	  transparent = true,
-- 	})
--   end
-- }

 return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
   require("catppuccin").setup({
    transparent_background = true, 
   })

    vim.cmd.colorscheme "catppuccin"

  end
}

-- return { 'wilmanbarrios/palenight.nvim', name = 'palenight', priority = 1000 }

