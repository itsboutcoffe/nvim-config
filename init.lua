-- setting leader key
vim.g.mapleader = " "  

--Setting Lazy nvim package manager
--settung up
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy Plugins and opts
local opts	  = {}

--calling Lazy nvim 
require("lazy").setup('plugins')
require("vim-options")
--calling moonlight colorscheme
--vim.cmd.colorscheme 'material-palenight'



