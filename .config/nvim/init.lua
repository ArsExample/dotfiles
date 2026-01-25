local vim = vim

vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float)
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action)

vim.keymap.set('n', '<leader>e', ':Neotree left reveal<CR>')
vim.keymap.set('n', '<leader>E', ':Neotree float<CR>')

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>q', ':bd<CR>', { desc = "Close buffer" })

vim.pack.add({
	{ src = "https://github.com/AmberLehmann/candyland.nvim" }, -- colortheme
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-mini/mini.pick" },
	{ src = "https://github.com/windwp/nvim-autopairs" }, -- autopairs
	{src = "https://github.com/nvim-lualine/lualine.nvim"}, -- lualine

	{ src = "https://github.com/neovim/nvim-lspconfig" }, -- lsp + cmp
	{ src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/saadparwaiz1/cmp_luasnip" },

    { src = "https://github.com/nvim-lua/plenary.nvim" }, -- neotree
    { src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons"},
	{ src = "https://github.com/nvim-neo-tree/neo-tree.nvim"},

	{ src = "https://github.com/nvim-telescope/telescope.nvim"},
})

-- vim.api.nvim_create_autocmd('LspAttach', {
-- 	callback = function(ev)
-- 		local client = vim.lsp.get_client_by_id(ev.data.client_id)
-- 		if client:supports_method('textDocument/completion') then
-- 			vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
-- 		end
-- 	end,
-- })
-- vim.cmd("set completeopt+=noselect")

-- plugin configuration
require("nvim-autopairs").setup({});
require("lualine").setup({});
require("neo-tree").setup({});

-- telescope
require("telescope").setup({});
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

-- lsp + cmp
vim.diagnostic.config({
	signs = {
	    text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN]  = " ",
			[vim.diagnostic.severity.INFO]  = " ",
			[vim.diagnostic.severity.HINT]  = " ",
		}
	},
	float = {
		border = "rounded"
	}
})

local cmp = require("cmp")
cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    },
	mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    },
})

vim.lsp.config("qmlls", {
    cmd = { "qmlls6" },
})

vim.lsp.config("pyright", {})

vim.lsp.enable({ "lua_ls", "qmlls", "pyright" })

-- styling
vim.cmd("colorscheme candyland")
vim.cmd(":hi statusline guibg=NONE")
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' }) -- прозрачный задний фон
