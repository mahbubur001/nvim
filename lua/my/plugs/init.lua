-- load colorscheme config first before other plugin configs in case of issues
require('my.plugs.gruvbox')

-- list of plugin configs
local plugins = {
  'autopairs',
  'colorizer',
  'compe',
  'gitsigns',
  'kommentary',
  'lir',
  'lspconfig',
  'telescope',
  -- 'formatter',
--   'treesitter',
  'web-devicons',
  'zen-mode',
}

-- loop through and load each plugin config file
for _, plug in pairs(plugins) do
  require(string.format('my.plugs.%s', plug))
end
