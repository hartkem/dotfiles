
-- bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require("lazy").setup({
  { "folke/tokyonight.nvim" }, -- Example colorscheme
})

-- Apply the colorscheme
vim.cmd("colorscheme tokyonight")

set number
