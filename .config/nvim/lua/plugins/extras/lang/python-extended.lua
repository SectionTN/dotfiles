return {
  { import = "lazyvim.plugins.extras.lang.python" },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.python = opts.formatters_by_ft.python or {}
      table.insert(opts.formatters_by_ft.python, "ruff_format")
      return opts
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "requirements" })
      end
    end,
  },
  {
    "MeanderingProgrammer/py-requirements.nvim",
    event = {
      "BufRead requirements.txt",
    },
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      {
        "hrsh7th/nvim-cmp",
        dependencies = {},
        opts = function(_, opts)
          table.insert(opts.sources, { name = "py-requirements" })
        end,
      },
    },
    opts = {},
    -- stylua: ignore
    keys = {
      { "<leader>pU", function() require("py-requirements").upgrade() end, desc = "Update Package (Python)" },
      { "<leader>pi", function() require("py-requirements").show_description() end, desc = "Package Info (Python)" },
      { "<leader>pa", function() require("py-requirements").upgrade_all() end, desc = "Update All Packages (Python)" },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>p"] = { name = " packages" },
      },
    },
  },
  {
    "luckasRanarison/nvim-devdocs",
    optional = true,
    ensure_installed = {
      "python-3.11",
    },
  },
}
