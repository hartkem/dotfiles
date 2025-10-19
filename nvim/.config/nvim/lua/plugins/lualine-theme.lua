return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- GitHub Dark (Primer) colors
      local bg = "#0d1117" -- canvas.default
      local bg_nc = "#161b22" -- canvas.subtle
      local border = "#30363d" -- border.default (for separators if you want)
      local fg = "#c9d1d9" -- fg.default
      local fg_muted = "#8b949e" -- fg.muted

      -- Accents
      local blue = "#58a6ff" -- accent.fg
      local green = "#3fb950" -- success.fg
      local purple = "#a371f7" -- done / attention subtle
      local red = "#f85149" -- danger.fg
      local yellow = "#d29922" -- attention.fg
      local magenta = "#cb689f"
      local theme = {
        normal = {
          a = { fg = bg, bg = blue, gui = "bold" },
          b = { fg = fg, bg = bg },
          c = { fg = fg, bg = bg },
        },
        insert = {
          a = { fg = bg, bg = red, gui = "bold" },
          b = { fg = fg, bg = bg },
          c = { fg = fg, bg = bg },
        },
        visual = {
          a = { fg = bg, bg = magenta, gui = "bold" },
          b = { fg = fg, bg = bg },
          c = { fg = fg, bg = bg },
        },
        replace = {
          a = { fg = bg, bg = red, gui = "bold" },
          b = { fg = fg, bg = bg },
          c = { fg = fg, bg = bg },
        },
        command = {
          a = { fg = bg, bg = yellow, gui = "bold" },
          b = { fg = fg, bg = bg },
          c = { fg = fg, bg = bg },
        },
        inactive = {
          a = { fg = fg_muted, bg = bg_nc },
          b = { fg = fg_muted, bg = bg_nc },
          c = { fg = fg_muted, bg = bg_nc },
        },
      }

      opts.options = opts.options or {}
      opts.options.theme = theme
      opts.options.globalstatus = true
      opts.options.section_separators = { left = "", right = "" }
      opts.options.component_separators = { left = "│", right = "│" }

      vim.api.nvim_set_hl(0, "StatusLine", { bg = "#0d1117", fg = "#c9d1d9" })
      vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#161b22", fg = "#8b949e" })

      -- keep the rest of your sections from LazyVim
      return opts
    end,
  },
}
