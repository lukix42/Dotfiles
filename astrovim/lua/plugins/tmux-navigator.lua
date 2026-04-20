if vim.env.ZELLIJ then
  return {
    "swaits/zellij-nav.nvim",
    lazy = true,
    event = "VeryLazy",
    keys = {
      { "<A-h>", "<cmd>ZellijNavigateLeftTab<cr>", desc = "Navigate left (zellij/vim)" },
      { "<A-j>", "<cmd>ZellijNavigateDown<cr>", desc = "Navigate down (zellij/vim)" },
      { "<A-k>", "<cmd>ZellijNavigateUp<cr>", desc = "Navigate up (zellij/vim)" },
      { "<A-l>", "<cmd>ZellijNavigateRightTab<cr>", desc = "Navigate right (zellij/vim)" },
    },
    opts = {},
  }
else
  return {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Navigate left (tmux/vim)" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Navigate down (tmux/vim)" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Navigate up (tmux/vim)" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Navigate right (tmux/vim)" },
    },
  }
end
