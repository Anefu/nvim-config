return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
   "williamboman/mason.nvim",
   opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "c++-lsp",
      "prettier",
      "pyre",
      "eslint-lsp"
    },
   },
  },
  {
   "nvim-treesitter/nvim-treesitter",
   opts = {
    ensure_installed = {
      "vim",
      "lua",
      "vimdoc",
      "html",
      "c",
      "cpp",
      "python",
      "terraform",
      "hcl"
    },
   },
  },
  {
  'rmagatti/auto-session',
   lazy = false,
    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
  opts = {
   suppressed_dirs = { '~/', '~/Projects', '/' },
        -- log_level = 'debug',
      }
  },
  -- lightspeed.nvim
  {
    'ggandor/lightspeed.nvim',
    event = 'VimEnter',
  },

  -- nvim-surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({})
    end
  },
  {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    config = function()
      require("supermaven-nvim").setup({})
    end,
  }
 }
