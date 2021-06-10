local maps = {}
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local nosilent = { noremap = true }


-- Nerdtree

map('n', ',e', '<cmd>NERDTreeToggle<cr>', opts)
map('n', '-', '<cmd>NERDTreeFind<cr>', opts)
map('n', '<leader>x', '<cmd>bd<cr>', opts)
map('n', 'J', "<cmd>m '>+1<CR>gv=gv<cr>", opts)
map('n', 'K', "<cmd>m '<-2<CR>gv=gv<cr>", opts)
map('n', ']', '<cmd>bnext<cr>', opts) -- TAB in general mode will move to text buffer
map('n', '[', '<cmd>bprevious<cr>', opts) -- Go back
map('n', 'jj', '<ESC>', opts) -- Go back
map('n', '<c-s>', '<cnd>w', opts) -- Go back
-- Allow saving of files as sudo when I forgot to start vim using sudo.
--command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

-- packer sync baby
map('n', '<leader>ps', '<cmd>PackerSync<cr>', opts)

-- delete without yanking
map('n', '<leader>d', '"_d', opts)
map('v', '<leader>d', '"_d', opts)

-- replace currently selected text with default register without yanking it
map('v', 'p', '"_dP', opts)

-- Remap Y to yank to end of line instead of aliasing yy
map('n', 'Y', 'y$', opts)
map('v', 'Y', 'y$', opts)

-- run a g:command
map('n', 'go', ':', nosilent)
map('v', 'go', ':', nosilent)

-- repeat last macro
map('n', '<c-m>', '@@', opts)
map('v', '<c-m>', '@@', opts)

-- repeat last :command
map('n', '<c-s>', '@:', nosilent)
map('v', '<c-s>', '@:', nosilent)

-- remap q: to be easier to use, less work for your poor left pinky
--map('n', 'gx', 'q:', nosilent)
--map('v', 'gx', 'q:', nosilent)

-- Global Substitute: same as %s/
map('n', 'gs', ':%s/', opts)
map('v', 'gs', ':%s/', opts)

-- open quickfix list
map('n', '<c-q>', '<cmd>copen<cr>', opts)

-- make 'q' exit the quickfix window
vim.cmd [[au! FileType qf lua vim.api.nvim_buf_set_keymap(0, 'n', 'q', '<cmd>cclose<cr>', { noremap = true })]]

-- quickfix list navigation yay
map('n', '<c-n>', '<cmd>cnext<cr>', opts)
map('n', '<c-p>', '<cmd>cprev<cr>', opts)

-- turn off search highlighting after finishing a search (nohlsearch)
map('n', '<leader>hl', '<cmd>noh<cr>', opts)

maps.source_filetype = function()
  local buf = vim.api.nvim_get_current_buf() -- get reference to current buf
  local ft = vim.api.nvim_buf_get_option(buf, 'filetype') -- get filetype of buffer
  if ft == 'lua' then
    vim.cmd('luafile %')
    print('lua file reloaded!')
  elseif ft == 'vim' then
    vim.cmd('source %')
    print('vim file sourced!')
  else
    print('Not a lua or vim file')
  end
end

-- turn terminal to normal mode with escape if it's not a lazygit terminal
maps.remap_term_escape = function()
  if vim.fn.bufname():match('lazygit') ~= 'lazygit' then
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<c-\><c-n>]], opts)
  end
end
vim.api.nvim_exec([[
  augroup RemapTermEscapeUnlessLazygit
    au!
    au TermOpen * lua require('my.maps').remap_term_escape()
  augroup END
]], false)

-- toggle relativenumber on/off for all windows
maps.toggle_numbers = function(buf_win_or_tab)
  local command = buf_win_or_tab or 'windo set '
  if vim.api.nvim_win_get_option(0, 'relativenumber') then
    vim.cmd(command .. 'norelativenumber')
  else
    vim.cmd(command .. 'relativenumber')
  end
end
map('n', '<leader>tn', '<cmd>lua require("my.maps").toggle_numbers()<cr>', opts)

return maps
