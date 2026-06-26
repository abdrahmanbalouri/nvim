mkdir -p ~/.config/nvim/lua/plugins
nvim ~/.config/nvim/lua/plugins/ui.lua


return {
  -- Theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
      },
    },
  },

  -- Buffer line
  {
    "akinsho/bufferline.nvim",
    opts = {},
  },

  -- Better notifications
  {
    "folke/noice.nvim",
    opts = {},
  },

  -- Dashboard
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },

  -- Icons
  {
    "nvim-tree/nvim-web-devicons",
  },

  -- File explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  -- Rainbow brackets
  {
    "HiPhish/rainbow-delimiters.nvim",
  },

  -- Better terminal
  {
    "akinsho/toggleterm.nvim",
    opts = {},
  },

  -- Smooth animations
  {
    "echasnovski/mini.animate",
    opts = {},
  },
}