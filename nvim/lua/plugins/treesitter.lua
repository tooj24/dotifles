return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
          ensure_installed = { "lua", "html", "javascript", "typescript" },
          highlight = { enabled = true },
          indent = { enabled = true },
        })
    end
  }
}
