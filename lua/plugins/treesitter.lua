return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir",
        "heex", "javascript", "html", "python", "markdown" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true }, 
      -- Automatically install missing parsers when entering buffer
      auto_install = false,

      -- List of parsers to ignore installing (or "all')
      ignore_install = { },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Enter>", --"gnn", -- set to `false` to disable one of the mappings
          node_incremental = "<Enter>", --"grn",
          scope_incremental = false, --"grc",
          node_decremental = "<Backspace>", -- "grm",
        },
      },
    })
  end
}
