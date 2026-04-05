return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        ignore_filetypes = {}, -- Optional: add filetypes to ignore
        color = {
          suggestion_color = "#ffffff",
          cterm = 244,
        },
        log_level = "info", -- "info", "warn", "error", "hint"
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false, -- disables built-in keymaps for more control
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "dragon",
        transparent = false,
        terminalColors = true,
      })
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = { enabled = false },
              },
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              semanticTokens = true,
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
            },
          },
        },
      },
    },
  },
  { "folke/trouble.nvim", enabled = false },
  { "nvim-tree/nvim-web-devicons", opts = { default = true, color_icons = true } },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        hidden = true,
        no_ignore = true,
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
        },
      },
    },
  },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "go",
        "cpp",
        "vue",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      highlight = {
        enable = true,
      },
    },
  },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.vue" },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "typescript-language-server",
        "vue-language-server",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
          },
        },
      },
    },
  },
}
