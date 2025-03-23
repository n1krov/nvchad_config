return {
  require('plugins.alpha'),
  require('plugins.markdown_plugins'),

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc", "html", "css", "svelte"
  		},
  	},
  },
  -- Plugin para Discord Rich Presence
    {
      'andweeb/presence.nvim',
        lazy = false, -- cargar cuando se inicie Neovim
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
      end
    },

     -- vim-commentary
     {
         'tpope/vim-commentary',
        event = 'BufRead', -- Cargar solo cuando se abra un archivo
         config = function()
             -- Opcional: Configuración específica para vim-commentary
             -- para que tenga en cuenta comentarios en archivos .svelte
             vim.cmd [[
               autocmd FileType svelte setlocal commentstring=/*\ %s\ */
               autocmd FileType svelte setlocal commentstring=//\ %s
               autocmd FileType svelte setlocal commentstring=<!--\ %s\ -->
             ]]
         end
     },
  {
    'github/copilot.vim',
    lazy= false,
    config = function()
      vim.g.copilot_filetypes = {
        markdown = true,
        -- Añade otros tipos de archivo que desees
      }
    end,
  },
}
