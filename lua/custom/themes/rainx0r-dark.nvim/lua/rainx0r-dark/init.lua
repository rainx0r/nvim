-- rainx0r's theme
-- Author: rainx0r

local M = {}

-- Color Palette
M.colors = {
    bg = "#0E181B",
    fg = "#F8FBFC",
    black = "#0E181B",
    red = "#FF1E00",
    green = "#00FFBF",
    yellow = "#B3F2FF",
    blue = "#00C2FF",
    magenta = "#9DB4BB",
    cyan = "#66E6FF",
    white = "#F8FBFC",
    bright_white = "#FFFFFF",
    dim_white = "#D9E5E8",
    pink = "#FF80BB",
    dark_pink = "#FF006A",
    teal = "#A3FFF0",
    light_blue = "#00A1FF",
    gray = "#5C808A",
    light_gray = "#9DB4BB",

    primary_900 = "#00264D",
}

function M.setup()
    local hi = vim.api.nvim_set_hl
    local colors = M.colors

    -- Editor highlights
    hi(0, "Normal", { fg = colors.fg, bg = colors.bg })
    hi(0, "LineNr", { fg = colors.magenta })
    hi(0, "Cursor", { fg = colors.bg, bg = colors.fg })
    hi(0, "CursorLine", { bg = colors.black })
    hi(0, "CursorLineNr", { fg = colors.fg, bold = true })
    hi(0, "Visual", { bg = colors.fg, fg = colors.bg })

    -- Syntax highlights
    hi(0, "Comment", { fg = colors.gray, italic = true })
    hi(0, "Comment.Doc", { fg = colors.light_gray })
    hi(0, "Constant", { fg = colors.pink })
    hi(0, "String", { fg = colors.teal })
    hi(0, "String.Escape", { fg = colors.light_gray })
    hi(0, "String.Regex", { fg = colors.dark_pink })
    hi(0, "String.Special", { fg = colors.light_gray })
    hi(0, "String.Special.Symbol", { fg = colors.dark_pink })
    hi(0, "Identifier", { fg = colors.dim_white })
    hi(0, "Function", { fg = colors.blue })
    hi(0, "Statement", { fg = colors.light_blue })
    hi(0, "Keyword", { fg = colors.primary_900 })
    hi(0, "PreProc", { fg = colors.primary_900 })
    hi(0, "Type", { fg = colors.cyan })
    hi(0, "Type.Builtin", { fg = colors.cyan })
    hi(0, "Type.Super", { fg = colors.cyan, italic = true })
    hi(0, "Special", { fg = colors.yellow })
    hi(0, "Underlined", { fg = colors.blue, underline = true })
    hi(0, "Title", { fg = colors.yellow, bold = true })
    hi(0, "Error", { fg = colors.red })
    hi(0, "Todo", { fg = colors.magenta, bold = true, italic = true })

    -- Additional highlights
    hi(0, "Boolean", { fg = colors.pink })
    hi(0, "Number", { fg = colors.pink })
    hi(0, "Operator", { fg = colors.light_gray })
    hi(0, "Delimiter", { fg = colors.light_gray })
    hi(0, "Punctuation", { fg = colors.light_gray })
    hi(0, "Tag", { fg = colors.dark_pink })
    hi(0, "Variable", { fg = colors.dark_pink })
    hi(0, "Variable.Parameter", { fg = colors.dark_pink, italic = true })
    hi(0, "Variable.Special", { fg = colors.primary_900, italic = true })

    -- UI highlights
    hi(0, "StatusLine", { fg = colors.fg, bg = colors.black })
    hi(0, "StatusLineNC", { fg = colors.magenta, bg = colors.black })
    hi(0, "TabLine", { fg = colors.magenta, bg = colors.black })
    hi(0, "TabLineFill", { fg = colors.magenta, bg = colors.black })
    hi(0, "TabLineSel", { fg = colors.fg, bg = colors.blue })
    hi(0, "VertSplit", { fg = colors.magenta })
    hi(0, "Folded", { fg = colors.magenta, bg = colors.black })
    hi(0, "FoldColumn", { fg = colors.magenta, bg = colors.black })
    hi(0, "SignColumn", { fg = colors.magenta, bg = colors.black })
    hi(0, "NonText", { fg = colors.magenta })
    hi(0, "SpecialKey", { fg = colors.blue })
    hi(0, "Pmenu", { fg = colors.fg, bg = colors.black })
    hi(0, "PmenuSel", { fg = colors.bg, bg = colors.blue })
    hi(0, "PmenuSbar", { bg = colors.black })
    hi(0, "PmenuThumb", { bg = colors.blue })
    hi(0, "MatchParen", { fg = colors.yellow, bold = true })
    hi(0, "Directory", { fg = colors.blue })
    hi(0, "IncSearch", { fg = colors.bg, bg = colors.yellow })
    hi(0, "Search", { fg = colors.bg, bg = colors.yellow })

    -- Diff highlights
    hi(0, "DiffAdd", { fg = colors.green, bg = colors.black })
    hi(0, "DiffChange", { fg = colors.yellow, bg = colors.black })
    hi(0, "DiffDelete", { fg = colors.red, bg = colors.black })
    hi(0, "DiffText", { fg = colors.blue, bg = colors.black })

    -- Spelling
    hi(0, "SpellBad", { undercurl = true, sp = colors.red })
    hi(0, "SpellCap", { undercurl = true, sp = colors.yellow })
    hi(0, "SpellLocal", { undercurl = true, sp = colors.green })
    hi(0, "SpellRare", { undercurl = true, sp = colors.blue })
end

return M
