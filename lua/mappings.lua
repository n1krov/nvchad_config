require "nvchad.mappings"



------------------------------------------------------------------------------------------
-- Ajuste de tamaño de ventana en Neovide
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<C-+>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-->', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor / 1.1<CR>', { noremap = true, silent = true })

------------------------------------------------------------------------------------------
-- Copiado y pegado de texto
------------------------------------------------------------------------------------------
-- Copiar y pegar desde/para el portapapeles del sistema
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })

-- Pegar texto en Neovide
vim.api.nvim_set_keymap('n', '<C-S-P>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-S-V>', '<C-r>+', { noremap = true, silent = true })


------------------------------------------------------------------------------------------
--- Transparencia para Neovide
------------------------------------------------------------------------------------------
-- transparencia para neovide
-- debe ser algo parecido a esto dashboard.button("l", "Set neovide's transparency to 0.92", "<cmd>let g:neovide_transparency=0.92<CR>"),

vim.api.nvim_set_keymap('n', '<leader>ll', ':let g:neovide_transparency=0.90<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lo', ':let g:neovide_transparency=1<CR>', { noremap = true, silent = true })


------------------------------------------------------------------------------------------
---Configuración General
------------------------------------------------------------------------------------------
-- Guardado y cierre rápido
vim.api.nvim_set_keymap('n', '<leader>ww', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qq', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Q', ':qa<CR>', { noremap = true, silent = true })


-- Alternar la barra de números relativa
vim.api.nvim_set_keymap('n', '<leader>rn', ':set relativenumber!<CR>', { noremap = true, silent = true })


-- Borrar sin copiar al registro
vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'x', '"_x', { noremap = true, silent = true })


-- Navegación y gestión de buffers
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bn', ':enew<CR>', { noremap = true, silent = true })

-- Mover líneas visualmente
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Mantener el cursor centrado al desplazarse
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-i>', 'zz', { noremap = true, silent = true })

-- Accesos directos a configuración de Neovim
-- vim.api.nvim_set_keymap('n', '<leader>vv', ':e $MYVIMRC<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>pp', ':e ~/.config/nvim/lua/plugins/init.lua<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>kk', ':e ~/.config/nvim/lua/core/keymaps.lua<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>oo', ':e ~/.config/nvim/lua/core/options.lua<CR>', { noremap = true, silent = true })


-- Recargar configuración sin salir de Neovim
vim.api.nvim_set_keymap('n', '<leader>sv', ':source $MYVIMRC<CR>', { noremap = true, silent = true })

-- Ir a la última línea del archivo
vim.api.nvim_set_keymap('n', ',', '$', { noremap = true, silent = true })


-- Volver al modo normal desde modo insercion presionando las teclas jk
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

------------------------------------------------------------------------------------------
-- Tabulacion
------------------------------------------------------------------------------------------

-- Configuración para tabulación y des-tabulación en el modo visual
vim.api.nvim_set_keymap('v', '<leader><Tab>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader><S-Tab>', '<gv', { noremap = true, silent = true })

-- Configuración para tabulación y des-tabulación en el modo normal
vim.api.nvim_set_keymap('n', '<leader><Tab>', '>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><S-Tab>', '<<', { noremap = true, silent = true })


------------------------------------------------------------------------------------------
-- Mapeos para moverse entre párrafos
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<A-k>', '{', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', '}', { noremap = true, silent = true })

-- Tambien para modo visual
vim.api.nvim_set_keymap('v', '<A-k>', '{', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', '}', { noremap = true, silent = true })



------------------------------------------------------------------------------------------
--- Navegacion entre palabras
------------------------------------------------------------------------------------------

-- Mapeo para moverse hacia atras y adelante entre palabras
vim.api.nvim_set_keymap('n', '<A-h>', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', 'w', { noremap = true, silent = true })

-- Mapeo para moverse hacia atras y adelante entre palabras en modo visual
vim.api.nvim_set_keymap('v', '<A-h>', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-l>', 'w', { noremap = true, silent = true })

-- Borrado de palabras en modo insercion con alt + retroceso
vim.api.nvim_set_keymap('i', '<A-BS>', '<C-w>', { noremap = true, silent = true })

-- Borrado de palabras en modo normal con alt + retroceso
vim.api.nvim_set_keymap('n', '<A-BS>', 'db', { noremap = true, silent = true })



------------------------------------------------------------------------------------------
-- NvimTree: Navegación del árbol de archivos
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ew', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

-- para cerrar el árbol de archivos
vim.api.nvim_set_keymap('n', '<leader>ec', ':NvimTreeClose<CR>', { noremap = true, silent = true })


------------------------------------------------------------------------------------------
-- Commentary: Comentar y descomentar código
------------------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>c<leader>', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>c<leader>', ':Commentary<CR>', { noremap = true, silent = true })

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")



