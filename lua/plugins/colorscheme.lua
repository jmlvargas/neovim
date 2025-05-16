return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    enabled = true,
    opts = {
      integrations = { blink_cmp = true },
    },
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
      vim.cmd("colorscheme catppuccin")
    end,
  },
}
