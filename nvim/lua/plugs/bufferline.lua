-- vim.opt.termguicolors = true

require("bufferline").setup{
    options = {
        close_icon = "",
        buffer_close_icon = "",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = '',
        -- separator_style = "slant",
    --     diagnostics_indicator = function(count, level, diagnostics_dict, context)
    --   return "("..count..")"
    -- end,
    }
}
