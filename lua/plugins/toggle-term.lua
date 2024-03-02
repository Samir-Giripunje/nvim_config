return {
  "akinsho/toggleterm.nvim",
  lazy = false,
  config = function()
    require("toggleterm").setup({
      direction = "horizontal",
      open_mapping = [[<A-h>]],
      shade_terminals = false,
    })

  end,
}
