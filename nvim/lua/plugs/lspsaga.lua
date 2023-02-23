local saga = require 'lspsaga'
-- use default config
saga.init_lsp_saga()

-------------------- hover doc
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

local action = require("lspsaga.action")
-- scroll down hover doc or scroll in definition preview
vim.keymap.set("n", "<C-f>", function()
    action.smart_scroll_with_saga(1)
end, { silent = true })
-- scroll up hover doc
vim.keymap.set("n", "<C-b>", function()
    action.smart_scroll_with_saga(-1)
end, { silent = true })

------------------- jump and show diagnostics
vim.keymap.set("n", "<leader>cd", require("lspsaga.diagnostic").show_line_diagnostics, { silent = true })
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

-- jump diagnostic
vim.keymap.set("n", "[e", require("lspsaga.diagnostic").goto_prev, { silent = true })
vim.keymap.set("n", "]e", require("lspsaga.diagnostic").goto_next, { silent = true })
-- or jump to error
vim.keymap.set("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

-- rename
vim.keymap.set("n", "<leader>r", "<cmd>Lspsaga rename<CR>", { silent = true })
-- close rename win use <C-c> in insert mode or `q` in normal mode or `:q`
--
-- preview definition
vim.keymap.set("n", "gp", "<cmd>Lspsaga preview_definition<CR>", { silent = true })

------------ lsp finder
-- lsp finder to find the cursor word definition and reference
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- Code action
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })

