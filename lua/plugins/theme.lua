-- https://github.com/sainnhe/everforest/blob/master/doc/everforest.txt
--
--
return {
      'neanias/everforest-nvim',
      lazy = false,
      priority = 1000,
      config = function()
	      require("everforest").setup({
		      transparent_background_level=2,
	      })
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.everforest_enable_italic = true
        vim.cmd.colorscheme('everforest')
      end
    } 
