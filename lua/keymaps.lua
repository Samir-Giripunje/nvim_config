-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

-- General Keymaps -------------------

-- General keybinding to select all

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<C-w>cc", { desc = "Close current split" }) -- close current split window

-- keymap.set("n", "<C-t>o", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- coments keymap
--  comment the curent line = gcc
--  coment the selected paragrap =gc

-- vim.api.nvim_set_keymap("n", "<C-Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

keymap.set("n", "<m-h>", "<C-w>h", opts)
keymap.set("n", "<m-j>", "<C-w>j", opts)
keymap.set("n", "<m-k>", "<C-w>k", opts)
keymap.set("n", "<m-l>", "<C-w>l", opts)
keymap.set("n", "<m-tab>", "<c-6>", opts)

-- these are from the autosession plugin
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

-- these are for the debugger plugin
-- 	keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
-- keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
-- keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
-- keymap.set("n", "<Leader>do", ":DapStepOver<CR>")

-- these are from vim git fugitive
-- vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
-- vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- harpoon keymaps
-- keys={	{ "<leader>hx", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
-- 		{ "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
-- 		{ "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
-- 		{ "<leader>ha", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
--     {"<leader>hu", "<cmd>lua require('harpoon.mark').rm_file()<cr>", desc="for unmarking file"}
-- }

--Keybindings for lsp-config
-- 			opts.desc = "Show LSP references"
-- 			keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
--
-- 			opts.desc = "Go to declaration"
-- 			keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
--
-- 			opts.desc = "Show LSP definitions"
-- 			keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
--
-- 			opts.desc = "Show LSP implementations"
-- 			keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations
--
-- 			opts.desc = "Show LSP type definitions"
-- 			keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions
--
-- 			opts.desc = "See available code actions"
-- 			keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
--
-- 			opts.desc = "Smart rename"
-- 			keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
--
-- 			opts.desc = "Show buffer diagnostics"
-- 			keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
--
-- 			opts.desc = "Show line diagnostics"
-- 			keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
--
-- 			opts.desc = "Go to previous diagnostic"
-- 			keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
--
-- 			opts.desc = "Go to next diagnostic"
-- 			keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
--
-- 			opts.desc = "Show documentation for what is under cursor"
-- 			keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
--
-- 			opts.desc = "Restart LSP"
-- 			keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
-- }

--neo tree keybindings
--  keys = {
-- 	{ "<leader>e", "<cmd>Neotree toggle<cr>" },
-- }
--

-- key for telescope
-- vim.keymap.set("n", "<C-p>", builtin.find_files, {})
--    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

vim.api.nvim_set_keymap(
	"n",
	"<leader>k",
	[[:lua require('keybindings').show_taken_keybindings()<CR>]],
	{ noremap = true, silent = true }
)
