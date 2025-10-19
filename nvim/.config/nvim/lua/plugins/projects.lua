-- lua/plugins/projects.lua
return {
  -- Project root detection + recent projects
  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    opts = {
      manual_mode = false, -- auto-detect roots
      detection_methods = { "pattern", "lsp" }, -- use .git/Makefile/etc and LSP roots
      patterns = { ".git", "Makefile", "package.json", "pyproject.toml", "Cargo.toml" },
      -- where project.nvim stores its recent projects file
      datapath = vim.fn.stdpath("data"),
      projects_path = "~/DEC/devel/", -- Your preferred directory
      show_hidden = false,
    },
    config = function(_, opts)
      require("project_nvim").setup(opts)
      -- Telescope integration: :Telescope projects
      pcall(require("telescope").load_extension, "projects")
    end,
  },

  -- Quality-of-life Telescope bindings for *your* projects dir
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    keys = {
      {
        "<leader>fd",
        function()
          require("telescope.builtin").find_files({ cwd = "~/DEC/devel/", hidden = true })
        end,
        desc = "Find files in ~/dev",
      },
      {
        "<leader>fD",
        function()
          require("telescope.builtin").live_grep({
            cwd = "~/DEC/devel/",
            additional_args = function()
              return { "--hidden" }
            end,
          })
        end,
        desc = "Grep in ~/DEC/devel/",
      },
      {
        "<leader>pp",
        function()
          require("telescope").extensions.projects.projects({})
        end,
        desc = "Projects (recent, project.nvim)",
      },
    },
  },
}
