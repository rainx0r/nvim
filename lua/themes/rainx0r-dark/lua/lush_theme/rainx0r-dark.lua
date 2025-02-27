--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require 'lush'
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn { bg = hsl '#0E181B' },   -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { bg = hsl '#1E2D31' }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory      { }, -- Directory names (and other special names in listings)
    -- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg { fg = hsl '#F50052' }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr { fg = hsl '#354C52' }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr { fg = hsl '#5C808A', bg = hsl '#1E2D31' }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineFold { bg = hsl '#1E2D31' },                   -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { bg = hsl '#1E2D31' },                   -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { fg = hsl '#F8FBFC', bg = hsl '#0E181B' }, -- Normal text
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { }, -- Popup menu: Normal item.
    BlinkCmpMenu { fg = hsl '#F8FBFC', bg = hsl '#000000' },
    -- BlinkCmpMenuSelection { fg = 'NONE', bg = hsl '#1E2D31' },
    BlinkCmpDoc { fg = hsl '#F8FBFC', bg = hsl '#000000' },
    BlinkCmpDocBorder { fg = hsl '#F8FBFC', bg = hsl '#000000' },
    -- BlinkCmpDocSeparator { },
    -- BlinkCmpDocCursorLine { },
    -- BlinkSignatureHelpBorder { },
    -- BlinkCmpSignatureHelpActiveParameter { },
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine { bg = hsl '#00C2FF', fg = hsl '#00264D' }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    -- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual { bg = hsl '#0B3A49' }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    Comment { fg = hsl '#5C808A' },  -- Any comment

    Constant { fg = hsl '#FF80BB' }, -- (*) Any constant
    String { fg = hsl '#A3FFF0' },   --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    -- Identifier     { }, -- (*) Any variable name
    Function { fg = hsl '#00C2FF' }, --   Function name (also: methods for classes)

    -- Statement      { }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator { fg = hsl '#9DB4BB' }, --   "sizeof", "+", "*", etc.
    Keyword { fg = hsl '#0081CC' },  --   any other keyword
    -- Exception      { }, --   try, catch, throw
    --
    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type { fg = hsl '#66E6FF' }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special { fg = hsl '#D6FEFF' },        -- (*) Any special symbol
    SpecialChar { fg = hsl '#FF3D9E' },    --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    Delimiter { fg = hsl '#9DB4BB' },      --   Character that needs attention
    SpecialComment { fg = hsl '#FF3D9E' }, --   Special things inside a comment (e.g. '\n')
    Debug { fg = hsl '#FF3D9E' },          --   Debugging statements
    debugBreakpoint { fg = hsl '#FF3D9E' },

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
    LspInlayHint { fg = hsl '#5C808A', bg = hsl '#1E2D31' },

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError { fg = hsl '#F50052' }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk { fg = hsl '#00FFBF' }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym '@comment' { fg = hsl '#5C808A' }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    sym '@constant.builtin' { fg = hsl '#FF80BB' }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    sym '@function.builtin' { fg = hsl '#00C2FF' }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    sym '@constructor' { fg = hsl '#66E6FF' }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    sym '@variable.member' { fg = hsl '#B3F2FF' },                  -- object and struct fields
    sym '@variable.builtin' { gui = 'italic', fg = hsl '#D6FEFF' }, -- this, self etc
    -- sym"@type"              { }, -- Type
    sym '@type.builtin' { fg = hsl '#66E6FF' },                     -- Built-in types
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag

    -- ibl
    IblScope { fg = hsl '#394040' },
    IblIndent { fg = hsl '#263132' },

    -- neo-tree
    NeoTreeDirectoryName { fg = hsl '#C2D2D6' },
    NeoTreeDirectoryIcon { fg = hsl '#C2D2D6' },
    NeoTreeFilename { fg = hsl '#C2D2D6' },
    NeoTreeGitModified { fg = hsl '#66E6FF' },
    NeoTreeGitAdded { fg = hsl '#66FFDE' },
    NeoTreeGitDeleted { fg = hsl '#FF1E00' },
    NeoTreeGitConflict { fg = hsl '#CC0044' },
    NeoTreeGitUntracked { fg = hsl '#66FFDE', gui = 'italic' },
    NeoTreeGitIgnored { fg = hsl '#4d5457' },
    NeoTreeDimText { fg = hsl '#4d5457' },
    NeoTreeDotfile { fg = hsl '#4d5457' },

    -- Spectre
    SpectreReplaceText { fg = hsl '#004D2D', bg = hsl '#A3FFF0' },
    SpectreMatchText { fg = hsl '#800015', bg = hsl '#FFB2CC' },

    -- blink-cmp
    BlinkCmpLabel { fg = hsl '#F8FBFC' },
    BlinkCmpLabelMatch { fg = hsl '#B3F2FF' },
    BlinkCmpLabelDeprecated { fg = hsl '#5C808A', strikethrough = true },
    BlinkCmpKindText { bg = hsl '#F8FBFC', fg = hsl '#0E181B' },
    BlinkCmpKindMethod { bg = hsl '#00C2FF', fg = hsl '#0E181B' },
    BlinkCmpKindFunction { bg = hsl '#00C2FF', fg = hsl '#0E181B' },
    BlinkCmpKindConstructor { bg = hsl '#66E6FF', fg = hsl '#0E181B' },
    BlinkCmpKindField { bg = hsl '#B3F2FF', fg = hsl '#0E181B' },
    BlinkCmpKindProperty { bg = hsl '#B3F2FF', fg = hsl '#0E181B' },
    BlinkCmpKindVariable { bg = hsl '#FF80BB', fg = hsl '#0E181B' },
    BlinkCmpKindClass { bg = hsl '#66E6FF', fg = hsl '#0E181B' },
    BlinkCmpKindInterface { bg = hsl '#66E6FF', fg = hsl '#0E181B' },
    BlinkCmpKindEnum { bg = hsl '#66E6FF', fg = hsl '#0E181B' },
    BlinkCmpKindStruct { bg = hsl '#66E6FF', fg = hsl '#0E181B' },
    BlinkCmpKindTypeParameter { bg = hsl '#66E6FF', fg = hsl '#0E181B' },
    BlinkCmpKindEnumMember { bg = hsl '#B3F2FF', fg = hsl '#0E181B' },
    BlinkCmpKindModule { bg = hsl '#00A1FF', fg = hsl '#0E181B' },
    BlinkCmpKindUnit { bg = hsl '#FF80BB', fg = hsl '#0E181B' },  -- TODO:
    BlinkCmpKindValue { bg = hsl '#00A1FF', fg = hsl '#0E181B' }, -- TODO:
    BlinkCmpKindKeyword { bg = hsl '#0081CC', fg = hsl '#0E181B' },
    BlinkCmpKindOperator { bg = hsl '#9DB4BB', fg = hsl '#0E181B' },
    BlinkCmpKindConstant { bg = hsl '#FF80BB', fg = hsl '#0E181B' },
    BlinkCmpKindColor { bg = hsl '#A3FFF0', fg = hsl '#0E181B' },
    BlinkCmpKindFile { bg = hsl '#A3FFF0', fg = hsl '#0E181B' },
    BlinkCmpKindFolder { bg = hsl '#A3FFF0', fg = hsl '#0E181B' },
    BlinkCmpKindSnippet { bg = hsl '#d7ba7d', fg = hsl '#0E181B' },
    BlinkCmpKindReference { bg = hsl '#d7ba7d', fg = hsl '#0E181B' },
    BlinkCmpKindEvent { bg = hsl '#d7ba7d', fg = hsl '#0E181B' },
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
