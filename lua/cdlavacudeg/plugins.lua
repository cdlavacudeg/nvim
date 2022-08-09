local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Packer
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- Needed to load first
  use "lewis6991/impatient.nvim" -- Speed up loading modules in Neovim 
  use "nathom/filetype.nvim"  -- Speed up nvim startup time
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-web-devicons" -- Icons

  -- Plugins
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use {'iamcco/markdown-preview.nvim',ft = 'markdown',run = 'cd app && npm install'} -- Markdown preview
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-tree.lua" -- File explorer
  use "akinsho/bufferline.nvim" -- Buffers,tabs,windows
  use "moll/vim-bbye" -- Buffers,tabs,windows
  use "nvim-lualine/lualine.nvim" -- Lua line
  use "akinsho/toggleterm.nvim" -- Terminal toggle

  -- Themes
  use "LunarVim/onedarker.nvim" -- Colorscheme onedarker
  use "joshdick/onedark.vim" --Colorscheme onedark
  use "folke/tokyonight.nvim" --Colorscheme tokyonight

  -- CSS Plugin
  use "ap/vim-css-color" -- Color name highlighter

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use { "p00f/nvim-ts-rainbow" }
  use "windwp/nvim-ts-autotag"

  -- cmp
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets & Language & Syntax
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "ray-x/lsp_signature.nvim" -- function signature when you type
  use "simrat39/symbols-outline.nvim"
  use {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  }

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- comments
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Git 
  use "lewis6991/gitsigns.nvim"

  -- editer config 
  use "gpanders/editorconfig.nvim"
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
