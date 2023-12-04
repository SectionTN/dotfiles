return {
  {
    "Weissle/persistent-breakpoints.nvim",
    event = "LazyFile",
    keys = {
      { "<leader>dbd", "<cmd>PBClearAllBreakpoints<cr>", desc = "Delete All Breakpoints" },
      { "<leader>dbB", "<cmd>PBSetConditionalBreakpoint<cr>", desc = "Breakpoint Condition" },
      { "<leader>dbb", "<cmd>PBToggleBreakpoint<cr>", desc = "Toggle Breakpoint" },
      { "<F2>", "<cmd>PBToggleBreakpoint<cr>", desc = "Toggle Breakpoint" },
    },
    opts = {
      load_breakpoints_event = { "BufReadPost" },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    keys = {
      { "<F2>", false },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>db"] = { name = "+breakpoints" },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>dL", false },
      { "<leader>dbl", "<cmd>Telescope dap list_breakpoints<CR>", desc = "List Breakpoints" },
    },
  },
}
