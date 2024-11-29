return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

      -- {
      -- 	"nvim-treesitter/nvim-treesitter",
      -- 	opts = {
      -- 		ensure_installed = {
      -- 			"vim", "lua", "vimdoc",
      --      "html", "css"
      -- 		},
      -- 	},
      -- },

      -- Plugin para Discord Rich Presence
      {
        "andweeb/presence.nvim",
        event = "BufReadPost", -- Se carga cuando abres un archivo
        config = function()
          require("presence").setup({
            -- Opciones generales
            auto_update = true,
            neovim_image_text = "Neovim",
            main_image = "neovide",
            client_id = "793271441293967371", -- Reemplaza con tu ID de cliente si es necesario
            log_level = nil,
            debounce_timeout = 10,
            enable_line_number = false,
            blacklist = {},
            buttons = true,
            show_time = true,

            -- Opciones de texto para Rich Presence
            editing_text = "Editando %s",
            file_explorer_text = "Navegando en %s",
            git_commit_text = "Committeando cambios",
            plugin_manager_text = "Gestionando plugins",
            reading_text = "Leyendo %s",
            workspace_text = "Trabajando en %s",
            line_number_text = "Línea %s de %s",
          })
        end,
      },

      -- Plugin para GitHub Copilot
      {
        "github/copilot.vim",
        event = "InsertEnter", -- Se carga al entrar en modo Insert
        config = function()
          -- Configuración específica de Copilot
          vim.g.copilot_filetypes = {
            markdown = true,
            -- Añade otros tipos de archivo que desees
          }
          -- Mapeos en modo inserción
          vim.api.nvim_set_keymap("i", "<C-Space>", "<Tab>", { expr = true, silent = true })
          
          -- Mapeos en modo normal
          vim.api.nvim_set_keymap("i", "<C-S>", "<Plug>(copilot-show)", { noremap = false, silent = true })
          vim.api.nvim_set_keymap("i", "<C-N>", "<Plug>(copilot-next)", { noremap = false, silent = true })
          vim.api.nvim_set_keymap("i", "<C-P>", "<Plug>(copilot-prev)", { noremap = false, silent = true })
        end,
      },
}
