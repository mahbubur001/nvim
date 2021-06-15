require('lualine').setup {
  options = {
    theme = 'gruvbox',
    section_separators = {'',''},
    component_separators = {'|', '|'},
    icons_enabled = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      {
        'filename',
        path = 1,
        lower = false,
      }
    },
    lualine_c = {
      'branch',
      {
        'diff',
        colored = true,
        color_added = '#266d6a',
        color_modified = '#536c9e',
        color_removed = '#b2555b',
        symbols = { added = '+', modified = '~', removed = '-' },
      },
    },
    lualine_x = {
      {
        'diagnostics',
        sources = { 'nvim_lsp' },
        sections = { 'error', 'warn', 'info' },
        color_error = '#db4b4b',
        color_warn = '#e0af68',
        color_info = '#1abc9c',
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' ',
        },
      },
    },
    lualine_y = {'filetype'},
    lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {'filename'},
    lualine_c = {'branch'},
    lualine_x = {},
    lualine_y = {'filetype'},
    lualine_z = {'location'},
  },
  tabline = {
        lualine_a = {'filetype'},
        lualine_b = {'filename'},
  },
  extensions = {}
}

print('From lua lualine');
