

-- Plugin Alpha

return {
        'goolord/alpha-nvim',
        -- para tratar la carga de lazy
        event = "VimEnter", -- Carga el plugin al iniciar Neovim
        config = function()
        --    require('alpha').setup(require('alpha.themes.startify').config)
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		vim.api.nvim_set_keymap("n", "<leader>a", "<cmd>Alpha<CR>", { noremap = true, silent = true }) --options to ensure that the mapping is not recursively mapped

		-- Set header
		dashboard.section.header.val = {}
     
		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("SPC cc", "  > Go to nvim dotconfig", "<cmd>e ~/.config/nvim/<CR>"),
            dashboard.button("SPC cf", "  > Go to .config/", "<cmd>e ~/.config<CR>"),
            dashboard.button("SPC uml", "󱡀  > Ir a UMLPractice", "<cmd>e ~/Documents/repos/UML-Practice<CR>"),
			dashboard.button("l", "Set neovide's transparency to 0.92", "<cmd>let g:neovide_transparency=0.92<CR>"),
			dashboard.button("SPC dsi", "[DSI-UC] > Ir a DSI-CU", "<cmd>e ~/Documents/repos/G10-ImplementacionCU<CR>"),
            dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
            -- para ir a el proyecto de gy-sis
            dashboard.button("SPC gysis", "  > Ir a GY-SIS", "<cmd>e ~/Documents/repos/gy-sis<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end
}


