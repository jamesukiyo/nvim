-- Set global UI defaults
local border = "none"  -- or "single" if you prefer

-- Default floating window border
local _open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or border
    opts.max_width = opts.max_width or 60
    opts.focusable = opts.focusable or false
    return _open_floating_preview(contents, syntax, opts, ...)
end

-- Default diagnostic float border
vim.diagnostic.config({
    float = {
        border = border,
        source = "always",
        header = "",
        prefix = "",
    },
})