--vim.cmd('hi Comment cterm=italics')
vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_invert_selection='0'
-- if exists('+termguicolors')
--     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
--     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
-- endif
vim.g.gruvbox_invert_selection='0'
vim.cmd('highlight ColorColumn ctermbg=0 guibg=grey')
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight netrwDir guifg=#5eacd3')
vim.cmd('highlight qfFileName guifg=#aed75f')

vim.cmd('colorscheme gruvbox')
