return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    config = function()
      vim.keymap.set("n", "<leader>e", "<C-w>l", { desc = "Focus Editor" })
      vim.keymap.set("n", "<leader>n", "<C-w>h", { desc = "Focus NeoTree" })
    end
  }
}
