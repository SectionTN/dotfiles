return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "lukas-reineke/cmp-rg",
  },
  opts = function(_, opts)
    table.insert(opts.sources, { name = "rg" })
  end,
}
