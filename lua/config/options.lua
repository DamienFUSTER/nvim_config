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

