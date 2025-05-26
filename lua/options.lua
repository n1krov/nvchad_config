require "nvchad.options"

-- add yours here!
-- local o = vim.o

-- Neovide: factor de escalado de la fuente

-- para pantallas de 1080p
vim.g.neovide_scale_factor = 0.70  -- Cambia este valor al tamaño que prefieras

--------------------------------------------------
--- CONFIGURACIÓN DE TEMAS
--------------------------------------------------

-- para seleccionar el modo oscuro
vim.opt.background = 'dark'

-- para el modo claro
-- vim.opt.background = 'light'



--------------------------------------------------

-- Opcional: Configura opciones básicas
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.opt.termguicolors = true

-- Configuración de Emmet
vim.g.user_emmet_leader_key = '<C-e>' -- Usa Ctrl+e como atajo para expandir abreviaciones

-----------------------------------------
--- Copilot
-----------------------------------------
vim.g.copilot_no_tab_map = false -- Desactiva el mapeo por defecto de <Tab>

-- Nuevos atajos para Copilot
-- vim.api.nvim_set_keymap("i", "<C-f>", 'copilot#Accept("<CR>")', { silent = true, expr = true }) -- Aceptar sugerencia con Ctrl+f
vim.api.nvim_set_keymap("i", "<C-'>", 'copilot#Dismiss()', { silent = true, expr = true }) -- Rechazar sugerencia con Ctrl+'
vim.api.nvim_set_keymap("i", "<C-¿>", 'copilot#Next()', { silent = true, expr = true }) -- Siguiente sugerencia con Ctrl+¿

------------------------------------------
--- usar el portapapeles del sistema
--------------------------------------------------
vim.opt.clipboard = 'unnamedplus'

-- si utilizas wayland, es posible que necesites instalar wl-clipboard
-- en caso de que uses x11 solo con xclip es suficiente
vim.g.clipboard = {
    name = 'wl-copy',
    copy = {
        ['+'] = 'wl-copy',
        ['*'] = 'wl-copy',
    },
    paste = {
        ['+'] = 'wl-paste',
        ['*'] = 'wl-paste',
    },
    cache_enabled = 0
}

-- Para versiones de ubuntu el clipboard es diferente
-- vim.g.clipboard = {
--    name = 'xclip',
--    copy = {
--    ['+'] = 'xclip -selection clipboard',
--    ['*'] = 'xclip -selection clipboard',
--    },
--    paste = {
--    ['+'] = 'xclip -selection clipboard -o',
--    ['*'] = 'xclip -selection clipboard -o',
--    },
--    cache_enabled = 0 
-- }


vim.o.cursorlineopt = 'both' -- to enable cursorline



