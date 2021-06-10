" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/Users/mahbubur/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/mahbubur/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/mahbubur/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/mahbubur/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/mahbubur/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["auto-session"] = {
    config = { "\27LJ\2\n¨\1\0\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\2B\0\2\1K\0\1\0\26auto_session_root_dir\15/sessions/\vconfig\fstdpath\afn\bvim\1\0\1\14log_level\nerror\nsetup\17auto-session\frequire\0" },
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/auto-session"
  },
  ["bullets.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/bullets.vim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewClose", "DiffviewFocusFiles", "DiffviewToggleFiles", "DiffviewRefresh" },
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22my.plugs.diffview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/diffview.nvim"
  },
  ["formatter.nvim"] = {
    commands = { "FormatWrite", "Format" },
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23my.plugs.formatter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  kommentary = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lazygit.nvim"] = {
    commands = { "LazyGit", "LazyGitConfig", "LazyGitFilter" },
    config = { "\27LJ\2\ná\1\0\0\2\0\6\1\0176\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0*\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\5\0K\0\1\0\30lazygit_use_neovim_remote+lazygit_floating_window_scaling_factor(lazygit_floating_window_use_plenary%lazygit_floating_window_winblend\6g\bvimçÌ™³\6³æ¬ÿ\3\0" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/lazygit.nvim"
  },
  ["lir.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/lir.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/lua-dev.nvim"
  },
  luarefvim = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/luarefvim"
  },
  ["luv-vimdocs"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/luv-vimdocs"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreviewToggle" },
    config = { "\27LJ\2\nv\0\0\2\0\6\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1ˆ\19=\1\5\0K\0\1\0\14mkdp_port\26mkdp_echo_preview_url\ffirefox\17mkdp_browser\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-projectconfig"] = {
    config = { "\27LJ\2\nN\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\24load_project_config\23nvim-projectconfig\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/nvim-projectconfig"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24my.plugs.ts-autotag\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    commands = { "Octo", "OctoAddReviewComment", "OctoAddReviewSuggestion" },
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/octo.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["session-lens"] = {
    config = { "\27LJ\2\nï\1\0\0\6\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\27<cmd>SearchSession<cr>\15<leader>ls\6n\20nvim_set_keymap\bapi\bvim\1\0\3\17prompt_title\28Pick your saved session\17shorten_path\1\rwinblend\3\0\nsetup\17session-lens\frequire\0" },
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/session-lens"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/telescope-github.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-devdocs"] = {
    commands = { "DD" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/vim-devdocs"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/vim-easy-align"
  },
  ["vim-latex-preview"] = {
    config = { "\27LJ\2\n_\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\rpdflatex\17latex_engine\vevince\21latex_pdf_viewer\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/vim-latex-preview"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-slash"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0#noremap <plug>(slash-after) zz\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/vim-slash"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-system-copy"] = {
    config = { "\27LJ\2\nµ\1\0\0\2\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0K\0\1\0\23system_copy_silent\28xclip -sel clipboard -o\31system_paste#paste_command\25xclip -sel clipboard\29system_copy#copy_command\6g\bvim\0" },
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/vim-system-copy"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["winteract.vim"] = {
    config = { "\27LJ\2\ns\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\27:InteractiveWindow<cr>\15<leader>wi\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/winteract.vim"
  },
  ["xonsh-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/opt/xonsh-vim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/Users/mahbubur/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time("Defining packer_plugins", false)
-- Setup for: nvim-projectconfig
time("Setup for nvim-projectconfig", true)
try_loadstring("\27LJ\2\n£\1\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2C<cmd>lua require'nvim-projectconfig'.edit_project_config()<cr>\15<leader>pc\6n\20nvim_set_keymap\bapi\bvim\0", "setup", "nvim-projectconfig")
time("Setup for nvim-projectconfig", false)
time("packadd for nvim-projectconfig", true)
vim.cmd [[packadd nvim-projectconfig]]
time("packadd for nvim-projectconfig", false)
-- Setup for: diffview.nvim
time("Setup for diffview.nvim", true)
try_loadstring("\27LJ\2\nz\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\26<cmd>DiffviewOpen<cr>\15<leader>gd\6n\20nvim_set_keymap\bapi\bvim\0", "setup", "diffview.nvim")
time("Setup for diffview.nvim", false)
-- Setup for: lazygit.nvim
time("Setup for lazygit.nvim", true)
try_loadstring("\27LJ\2\nu\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\21<cmd>LazyGit<cr>\15<leader>gs\6n\20nvim_set_keymap\bapi\bvim\0", "setup", "lazygit.nvim")
time("Setup for lazygit.nvim", false)
-- Setup for: vim-easy-align
time("Setup for vim-easy-align", true)
try_loadstring("\27LJ\2\n•\1\0\0\6\0\t\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0'\3\4\0'\4\5\0005\5\b\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\6v\1\0\1\fnoremap\2\23<cmd>EasyAlign<cr>\aga\6n\20nvim_set_keymap\bapi\bvim\0", "setup", "vim-easy-align")
time("Setup for vim-easy-align", false)
-- Setup for: vim-latex-preview
time("Setup for vim-latex-preview", true)
try_loadstring("\27LJ\2\ns\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\27:StartLatexPreview<cr>\15<leader>pl\6n\20nvim_set_keymap\bapi\bvim\0", "setup", "vim-latex-preview")
time("Setup for vim-latex-preview", false)
-- Config for: todo-comments.nvim
time("Config for todo-comments.nvim", true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time("Config for todo-comments.nvim", false)
-- Config for: nvim-projectconfig
time("Config for nvim-projectconfig", true)
try_loadstring("\27LJ\2\nN\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\24load_project_config\23nvim-projectconfig\frequire\0", "config", "nvim-projectconfig")
time("Config for nvim-projectconfig", false)
-- Config for: vim-system-copy
time("Config for vim-system-copy", true)
try_loadstring("\27LJ\2\nµ\1\0\0\2\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0K\0\1\0\23system_copy_silent\28xclip -sel clipboard -o\31system_paste#paste_command\25xclip -sel clipboard\29system_copy#copy_command\6g\bvim\0", "config", "vim-system-copy")
time("Config for vim-system-copy", false)
-- Config for: auto-session
time("Config for auto-session", true)
try_loadstring("\27LJ\2\n¨\1\0\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\2B\0\2\1K\0\1\0\26auto_session_root_dir\15/sessions/\vconfig\fstdpath\afn\bvim\1\0\1\14log_level\nerror\nsetup\17auto-session\frequire\0", "config", "auto-session")
time("Config for auto-session", false)
-- Config for: winteract.vim
time("Config for winteract.vim", true)
try_loadstring("\27LJ\2\ns\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\27:InteractiveWindow<cr>\15<leader>wi\6n\20nvim_set_keymap\bapi\bvim\0", "config", "winteract.vim")
time("Config for winteract.vim", false)
-- Config for: session-lens
time("Config for session-lens", true)
try_loadstring("\27LJ\2\nï\1\0\0\6\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\27<cmd>SearchSession<cr>\15<leader>ls\6n\20nvim_set_keymap\bapi\bvim\1\0\3\17prompt_title\28Pick your saved session\17shorten_path\1\rwinblend\3\0\nsetup\17session-lens\frequire\0", "config", "session-lens")
time("Config for session-lens", false)
-- Config for: trouble.nvim
time("Config for trouble.nvim", true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time("Config for trouble.nvim", false)
-- Config for: vim-slash
time("Config for vim-slash", true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0#noremap <plug>(slash-after) zz\bcmd\bvim\0", "config", "vim-slash")
time("Config for vim-slash", false)

-- Command lazy-loads
time("Defining lazy-load commands", true)
vim.cmd [[command! -nargs=* -range -bang -complete=file OctoAddReviewSuggestion lua require("packer.load")({'octo.nvim'}, { cmd = "OctoAddReviewSuggestion", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file EasyAlign lua require("packer.load")({'vim-easy-align'}, { cmd = "EasyAlign", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file LazyGitFilter lua require("packer.load")({'lazygit.nvim'}, { cmd = "LazyGitFilter", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Octo lua require("packer.load")({'octo.nvim'}, { cmd = "Octo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file DD lua require("packer.load")({'vim-devdocs'}, { cmd = "DD", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file LazyGitConfig lua require("packer.load")({'lazygit.nvim'}, { cmd = "LazyGitConfig", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file FormatWrite lua require("packer.load")({'formatter.nvim'}, { cmd = "FormatWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Format lua require("packer.load")({'formatter.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file DiffviewClose lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file DiffviewFocusFiles lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewFocusFiles", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file DiffviewToggleFiles lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewToggleFiles", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file DiffviewRefresh lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file MarkdownPreviewToggle lua require("packer.load")({'markdown-preview.nvim'}, { cmd = "MarkdownPreviewToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file LazyGit lua require("packer.load")({'lazygit.nvim'}, { cmd = "LazyGit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file OctoAddReviewComment lua require("packer.load")({'octo.nvim'}, { cmd = "OctoAddReviewComment", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time("Defining lazy-load commands", false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time("Defining lazy-load filetype autocommands", true)
vim.cmd [[au FileType svelte ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "svelte" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'bullets.vim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType text ++once lua require("packer.load")({'bullets.vim'}, { ft = "text" }, _G.packer_plugins)]]
vim.cmd [[au FileType latex ++once lua require("packer.load")({'bullets.vim'}, { ft = "latex" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'bullets.vim', 'vim-latex-preview'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType xsh ++once lua require("packer.load")({'xonsh-vim'}, { ft = "xsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType xonsh ++once lua require("packer.load")({'xonsh-vim'}, { ft = "xonsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
time("Defining lazy-load filetype autocommands", false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time("Sourcing ftdetect script at: /Users/mahbubur/.local/share/nvim/site/pack/packer/opt/xonsh-vim/ftdetect/xonsh.vim", true)
vim.cmd [[source /Users/mahbubur/.local/share/nvim/site/pack/packer/opt/xonsh-vim/ftdetect/xonsh.vim]]
time("Sourcing ftdetect script at: /Users/mahbubur/.local/share/nvim/site/pack/packer/opt/xonsh-vim/ftdetect/xonsh.vim", false)
time("Sourcing ftdetect script at: /Users/mahbubur/.local/share/nvim/site/pack/packer/opt/vim-latex-preview/ftdetect/latex.vim", true)
vim.cmd [[source /Users/mahbubur/.local/share/nvim/site/pack/packer/opt/vim-latex-preview/ftdetect/latex.vim]]
time("Sourcing ftdetect script at: /Users/mahbubur/.local/share/nvim/site/pack/packer/opt/vim-latex-preview/ftdetect/latex.vim", false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
