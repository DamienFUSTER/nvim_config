vim.g.have_nerd_font = true -- J'ai un nerd font

vim.opt.number = true -- Mettre les numéro de ligne 

vim.opt.mouse = 'a' -- Pour la souris

vim.schedule(function() -- pour les copier coller
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.showmode = false -- Pas de double indication 

-- Show which line your cursor is on
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 8  

vim.opt.softtabstop = 2 -- Soft tab stop 

vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                         -- Always show sign column
--vim.opt.colorcolumn = "120"      -- Show column at 100 characters
vim.opt.cmdheight = 1 -- Command line height

vim.opt.backup = false                             -- Don't create backup files
vim.opt.writebackup = false                        -- Don't create backup before writing
vim.opt.swapfile = false                           -- Don't create swap files


