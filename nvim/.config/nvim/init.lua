-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.termguicolors = true
vim.opt.background = "dark" -- or "light"
vim.cmd.colorscheme("default")
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("cd ~")
  end,
})

-- autosave when focus lost
vim.api.nvim_create_autocmd({ "FocusLost", "InsertLeave" }, {
  pattern = "*",
  command = "silent! wa",
})
