local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require("packer").startup(function(use)
  -- Packer can manage itself as an optional plugin
  use "wbthomason/packer.nvim"
  use { "nvim-lua/popup.nvim" }
  -- Icons
  use { "kyazdani42/nvim-web-devicons" }
  use { "projekt0n/github-nvim-theme" }
  -- NvimTree
  use {
    "kyazdani42/nvim-tree.lua",
    -- event = "BufWinOpen",
    -- cmd = "NvimTreeToggle",
    --config = function()
    --  require("core.nvimtree").setup()
    --end,
  }
  -- Autocomplete
  use {
    "hrsh7th/nvim-compe",
    -- event = "InsertEnter",
    config = function()
      require("core.compe").setup()
    end,
  }
  -- Lua line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    config = [[require('core.telescope').setup()]],
  }
  -- GIT stuff
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
end)
