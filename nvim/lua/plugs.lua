-- require('plugs.ale-config')
require('plugs.fzf')
require('plugs.gitsigns')
require('plugs.signature')
require('plugs.lualine')
-- require('plugs.feline')
-- require('plugs.lspsaga')
-- require('plugs.lsp')
require('plugs.lsp-config')
-- require("lspconfig").pylsp.setup{}
-- require('plugs.lsp_config')
-- require('plugs.cmp')
require("nvim-treesitter").statusline()
require("nvim-gps").setup()
require("scrollbar").setup()

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = false,
        disable = {},
    },
}



require('neogen').setup{
    enabled = true,
    languages = {
        python = {
            annotation_convention = "google_docstrings"
        }
    }
}
-- require('neogen').generate()

vim.cmd[[
source ~/.config/nvim/sources/compe.vim
]]

---------- SLOW SECTION ---------------
-- require('plugs.nvim-tree') -- slows down save file
--
-- require('plugs.bufferline')
