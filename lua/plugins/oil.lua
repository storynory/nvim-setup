return {
  {
    "stevearc/oil.nvim",
     lazy = false,
    opts = {},
    -- Optional dependencies: nvim-tree/nvim-web-devicons is recommended for icons
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- Setup oil.nvim
      require("oil").setup({
        -- Oil will take over directory buffers (e.g. vim . or :e src/)
        default_file_explorer = true,
        -- Add other options here if needed, see the oil.nvim documentation
      })

      -- Set a keymap to open oil in the parent directory (mimics vim-vinegar behavior)
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
  },
}

