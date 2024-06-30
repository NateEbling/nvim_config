local M = {}

-- local _debug = function(content)
--   local f = io.open("/home/acc/.nvim.debug.log", "a")
--   f:write(vim.inspect(content) .. "\n")
--   f.close()
-- end
function M.setup(config)
  config = config or require("handmade-hero-theme.config")
  local colors = require("handmade-hero-theme.colors")
  local c = colors.config(config)

  local theme = {}
  theme.defer = {}
  theme.base = {
    NormalFloat = { fg = c.text_default, bg = c.back },
    Normal = { fg = c.text_default, bg = c.back },
    Comment = { fg = c.comment, style = config.comment_style },
    Constant = { fg = c.blue },
    String = { fg = c.str_constant, style = config.string_style },
    Character = { fg = c.str_constant },
    Number = { fg = c.str_constant },
    Boolean = { fg = c.undo },
    Float = { fg = c.str_constant },
    Identifier = { fg = c.str_constant, style = config.variable_style },
    Function = { fg = c.str_constant },
    Statement = { fg = c.keyword },
    Conditional = { fg = c.text_default },
    Repeat = { fg = c.macro },
    Label = { fg = c.type },
    Operator = { fg = c.text_default },
    Keyword = { fg = c.keyword, style = config.keyword_style },
    Exception = { fg = c.macro },
    PreProc = { fg = c.str_constant },
    Include = { fg = c.keyword },
    Define = { fg = c.macro },
    Title = { fg = c.text_default },
    Macro = { fg = c.macro },
    PreCondit = { fg = c.macro },
    Type = { fg = c.str_constant },
    StorageClass = { fg = c.base },
    Structure = { fg = c.str_constant },
    Typedef = { fg = c.str_constant },
    Special = { fg = c.type },
    SpecialComment = { fg = c.comment },
    MoreMsg = { fg = c.text_default },
    Error = { fg = c.keyword, style = "bold" },
    Todo = { fg = c.macro, style = "bold" },
    CursorLineNr = { fg = c.comment, style = "bold" },
    debugPc = { bg = c.operator_alt },
    Conceal = { fg = c.comment },
    Directory = { fg = c.type },

    TabLine = { bg = c.highlight_cursor_line, fg = c.comment }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.margin }, -- tab pages line, where there are no labels
    TabLineSel = { fg = c.text_default, bg = c.highlight_cursor_line }, -- tab pages line, active tab page label

    DiffAdd = { bg = c.diff.add },
    DiffChange = { bg = c.diff.change },
    DiffDelete = { bg = c.diff.delete },
    DiffText = { bg = c.diff.text },

    ErrorMsg = { fg = c.keyword },
    VertSplit = { fg = c.margin_hover },
    Folded = { fg = c.comment },
    IncSearch = { bg = c.margin_active },
    LineNr = { fg = c.highlight },
    MatchParen = { bg = c.base, style = "underline" },
    NonText = { fg = c.comment },
    Pmenu = { fg = c.text_default, bg = c.margin_hover },
    PmenuSel = { fg = c.back, bg = c.base },
    Question = { fg = c.macro },
    QuickFixLine = { fg = c.back, bg = c.str_constant },
    Search = { fg = c.back, bg = c.text_default },
    SpecialKey = { fg = c.comment },
    SpellBad = { fg = c.keyword, style = "underline" },
    SpellCap = { fg = c.base },
    SpellLocal = { fg = c.base },
    SpellRare = { fg = c.base },
    StatusLine = { fg = c.text_default, bg = c.highlight },
    StatusLineNC = { fg = c.comment },
    StatusLineTerm = { fg = c.text_default, bg = c.highlight },
    StatusLineTermNC = { fg = c.highlight },
    Terminal = { fg = c.text_default, bg = c.back },
    VisualNOS = { fg = c.highlight },
    WarningMsg = { fg = c.str_constant },
    WildMenu = { fg = c.back, bg = c.base },
    EndOfBuffer = { fg = c.back },

    -- Tree Sitter
    ["@boolean"] = { fg = c.macro },
    ["@define"] = { fg = c.keyword },
    ["@comment"] = { fg = c.comment, style = config.comment_style },
    ["@error"] = { fg = c.keyword },
    ["@punctuation.delimiter"] = { fg = c.text_default },
    ["@punctuatio.bracket"] = { fg = c.text_default },
    ["@punctuatio.special"] = { fg = c.text_default },
    ["@constant"] = { fg = c.blue },
    ["@constant.builtin"] = { fg = c.blue },
    ["@string"] = { fg = c.str_constant, style = config.string_style },
    ["@character"] = { fg = c.str_constant },
    ["@number"] = { fg = c.macro },
    ["@namespace"] = { fg = c.text_default },
    ["@func.builtin"] = { fg = c.functionh },
    ["@function"] = { fg = c.functionh },
    ["@func.macro"] = { fg = c.functionh },
    ["@parameter"] = { fg = c.base, style = "nocombine" },
    ["@parameter.reference"] = { fg = c.base },
    ["@method"] = { fg = c.functionh, style = config.function_style },
    ["@field"] = { fg = c.pop2 },
    ["@property"] = { fg = c.text_default },
    ["@constructor"] = { fg = c.operator, style = "nocombine" },
    ["@conditional"] = { fg = c.keyword },
    ["@repeat"] = { fg = c.keyword },
    ["@label"] = { fg = c.base },
    ["@keyword"] = { fg = c.keyword, style = config.keyword_style },
    ["@keyword.return"] = { fg = c.keyword, style = config.keyword_style },
    ["@keyword.export"] = { fg = c.keyword, style = config.keyword_style },
    ["@keyword.function"] = { fg = c.keyword, style = config.keyword_style },
    ["@keyword.operator"] = { fg = c.keyword },
    ["@keyword.directive.cpp"] = { fg = "#FFFFFF" },
    ["@keyword.directive.define.cpp"] = { fg = "#FFFFFF" },
    ["@include"] = { fg = c.keyword, style = config.keyword_style },
    ["@operator"] = { fg = "#b3b3b3" },
    ["@exception"] = { fg = c.keyword },
    ["@type"] = { fg = c.text_default },
    ["@type.builtin"] = { fg = c.base },
    ["@structure"] = { fg = c.base },
    ["@variable"] = { fg = c.text_default, style = config.variable_style },
    ["@variable.member"] = { fg = c.text_default, style = config.variable_style },
    ["@variable.builtin"] = { fg = c.base },
    ["@text"] = { fg = c.str_constant },
    ["@strong"] = { fg = c.str_constant },
    ["@emphasis"] = { fg = c.str_constant },
    ["@underline"] = { fg = c.str_constant },
    ["@title"] = { fg = c.str_constant },
    ["@literal"] = { fg = c.str_constant },
    ["@uri"] = { fg = c.str_constant },
    ["@tag"] = { fg = c.text_default },
    ["@tag.delimiter"] = { fg = c.operator },
    ["@tag.attribute"] = { fg = c.text_default },
    
    ["@type.builtin.cpp"] = { fg = "#fcee68" },

    -- per language TreeSitter
    ["@variable.python"] = { fg = c.text_default, bg = c.none },
    ["@constructor.python"] = { fg = c.keyword, bg = c.none, style = "nocombine" },
    ["@type.python"] = { fg = c.keyword, bg = c.none, style = "nocombine" },
    ["@decorator.python"] = { fg = c.operator, style = "bold" },
    ["@variable.rust"] = { fg = c.text_default, bg = c.none },
    ["@conditional.javascript"] = { fg = c.keyword },
    ["@variable.javascript"] = { fg = c.text_default },
    ["@tag.attribute"] = { fg = c.base },

    ["@lsp.type.class"] = { fg = "#fcee68" },
    ["@lsp.type.decorator"] = { fg = c.operator },
    ["@lsp.type.enum"] = { fg = c.operator },
    ["@lsp.type.enumMember"] = { fg = c.operator },
    ["@lsp.type.function"] = { fg = c.functionh, style = config.function_style },
    ["@lsp.type.interface"] = { fg = c.operator },
    ["@lsp.type.macro"] = { fg = c.blue },
    ["@lsp.type.method"] = { fg = c.functionh },
    ["@lsp.type.namespace"] = { fg = c.text_default },
    ["@lsp.type.parameter"] = { fg = "#b3b3b3" },
    ["@lsp.type.property"] = { fg = c.text_default },
    ["@lsp.type.struct"] = { fg = c.operator },
    ["@lsp.type.type"] = { fg = c.text_default },
    ["@lsp.type.typeParameter"] = { fg = c.operator },
    ["@lsp.type.variable"] = { fg = c.text_default },

    htmlArg = { fg = c.str_constant },
    htmlBold = { fg = c.str_constant, style = "bold" },
    htmlEndTag = { fg = c.text_default },
    htmlH1 = { fg = c.text_default },
    htmlH2 = { fg = c.text_default },
    htmlH3 = { fg = c.text_default },
    htmlH4 = { fg = c.text_default },
    htmlH5 = { fg = c.text_default },
    htmlH6 = { fg = c.text_default },
    htmlItalic = { fg = c.macro, style = "italic" },
    htmlLink = { fg = c.text_default, style = "underline" },
    htmlSpecialChar = { fg = c.str_constant },
    htmlSpecialTagName = { fg = c.base },
    htmlTag = { fg = c.type },
    htmlTagN = { fg = c.undo },
    htmlTagName = { fg = c.undo },
    htmlTitle = { fg = c.text_default },

    markdownBlockquote = { fg = c.comment },
    markdownBold = { fg = c.str_constant, style = "bold" },
    markdownCode = { fg = c.str_constant },
    markdownCodeBlock = { fg = c.comment },
    markdownCodeDelimiter = { fg = c.comment },
    markdownH1 = { fg = c.text_default },
    markdownH2 = { fg = c.text_default },
    markdownH3 = { fg = c.text_default },
    markdownH4 = { fg = c.text_default },
    markdownH5 = { fg = c.text_default },
    markdownH6 = { fg = c.text_default },
    markdownHeadingDelimiter = { fg = c.undo },
    markdownHeadingRule = { fg = c.comment },
    markdownId = { fg = c.macro },
    markdownIdDeclaration = { fg = c.base },
    markdownIdDelimiter = { fg = c.macro },
    markdownItalic = { fg = c.macro, style = "italic" },
    markdownLinkDelimiter = { fg = c.macro },
    markdownLinkText = { fg = c.base },
    markdownListMarker = { fg = c.undo },
    markdownOrderedListMarker = { fg = c.undo },
    markdownRule = { fg = c.comment },
    markdownUrl = { fg = c.str_constant, style = "underline" },

    phpInclude = { fg = c.macro },
    phpClass = { fg = c.str_constant },
    phpClasses = { fg = c.str_constant },
    phpFunction = { fg = c.base },
    phpType = { fg = c.macro },
    phpKeyword = { fg = c.macro },
    phpVarSelector = { fg = c.text_default },
    phpIdentifier = { fg = c.text_default },
    phpMethod = { fg = c.base },
    phpBoolean = { fg = c.base },
    phpParent = { fg = c.text_default },
    phpOperator = { fg = c.macro },
    phpRegion = { fg = c.macro },
    phpUseNamespaceSeparator = { fg = c.text_default },
    phpClassNamespaceSeparator = { fg = c.text_default },
    phpDocTags = { fg = c.macro },
    phpDocParam = { fg = c.macro },

    CocExplorerIndentLine = { fg = c.comment },
    CocExplorerBufferRoot = { fg = c.undo },
    CocExplorerFileRoot = { fg = c.undo },
    CocExplorerBufferFullPath = { fg = c.comment },
    CocExplorerFileFullPath = { fg = c.comment },
    CocExplorerBufferReadonly = { fg = c.macro },
    CocExplorerBufferModified = { fg = c.macro },
    CocExplorerBufferNameVisible = { fg = c.undo },
    CocExplorerFileReadonly = { fg = c.macro },
    CocExplorerFileModified = { fg = c.macro },
    CocExplorerFileHidden = { fg = c.comment },
    CocExplorerHelpLine = { fg = c.macro },
    CocHighlightText = { bg = c.highlight_cursor_line },

    EasyMotionTarget = { fg = c.keyword, style = "bold" },
    EasyMotionTarget2First = { fg = c.keyword, style = "bold" },
    EasyMotionTarget2Second = { fg = c.keyword, style = "bold" },

    StartifyNumber = { fg = c.text_default },
    StartifySelect = { fg = c.base },
    StartifyBracket = { fg = c.base },
    StartifySpecial = { fg = c.undo },
    StartifyVar = { fg = c.base },
    StartifyPath = { fg = c.str_constant },
    StartifyFile = { fg = c.text_default },
    StartifySlash = { fg = c.text_default },
    StartifyHeader = { fg = c.highlight },
    StartifySection = { fg = c.str_constant },
    StartifyFooter = { fg = c.str_constant },

    WhichKey = { fg = c.macro },
    WhichKeySeperator = { fg = c.str_constant },
    WhichKeyGroup = { fg = c.undo },
    WhichKeyDesc = { fg = c.macro },

    diffAdded = { fg = c.macro },
    diffRemoved = { fg = c.keyword },
    diffFileId = { fg = c.macro },
    diffFile = { fg = c.comment },
    diffNewFile = { fg = c.str_constant },
    diffOldFile = { fg = c.undo },

    SignifySignAdd = { fg = c.str_constant },
    SignifySignChange = { fg = c.str_constant },
    SignifySignDelete = { fg = c.undo },
    GitGutterAdd = { fg = c.macro },
    GitGutterChange = { fg = c.str_constant },
    GitGutterDelete = { fg = c.operator_alt },
    debugBreakpoint = { fg = c.operator_alt, style = "reverse" },

    vimString = { fg = c.base },
    VimwikiHeader1 = { fg = c.undo, style = "bold" },
    VimwikiHeader2 = { fg = c.str_constant, style = "bold" },
    VimwikiHeader3 = { fg = c.type, style = "bold" },
    VimwikiHeader4 = { fg = c.type, style = "bold" },
    VimwikiHeader5 = { fg = c.keyword, style = "bold" },
    VimwikiHeader6 = { fg = c.highlight, style = "bold" },
    VimwikiLink = { fg = c.macro },
    VimwikiHeaderChar = { fg = c.highlight },
    VimwikiHR = { fg = c.str_constant },
    VimwikiList = { fg = c.undo },
    VimwikiTag = { fg = c.undo },
    VimwikiMarkers = { fg = c.highlight },

    ColorColumn = { bg = c.back },
    SignColumn = { bg = c.back },
    CursorColumn = { bg = c.margin_hover },
    CursorLine = { bg = c.margin_hover },
    FoldColumn = { fg = c.NONE },
    PmenuSbar = { bg = c.comment },
    PmenuThumb = { bg = c.text_default },
    EasyMotionShade = { fg = c.NONE },
    Visual = { bg = c.highlight },
    MultiCursor = { bg = c.margin_hover },
    Cursor = { bg = "#5e5e5e" , fg = c.NONE },

    -- mix
    GitSignsCurrentLineBlame = { fg = c.comment, style = "italic" },
    Underlined = { fg = c.operator_alt, style = "underline" },
    ["@variable.cpp"] = { fg = c.milk },

    -- Nvim Tree
    NvimTreeNormal = { fg = c.text_default, bg = c.back },
    NvimTreeNormalNC = { fg = c.text_default, bg = c.back },
    NvimTreeFolderIcon = { fg = c.str_constant },
    NvimTreeRootFolder = { fg = c.macro },
    NvimTreeExecFile = { fg = c.text_default },

    NvimTreeGitDirty = { fg = c.keyword },
    NvimTreeGitStaged = { fg = c.text_default },
    NvimTreeGitMerge = { fg = c.str_constant },
    NvimTreeGitRenamed = { fg = c.str_constant },
    NvimTreeGitNew = { fg = c.str_constant },
    NvimTreeGitDeleted = { fg = c.keyword },

    -- Hop
    HopNextKey = { fg = c.str_constant, bg = c.highlight_cursor_line, style = "bold" },
    HopNextKey1 = { fg = c.str_constant, bg = c.highlight_cursor_line, style = "bold" },
    HopNextKey2 = { fg = c.str_constant, bg = c.highlight_cursor_line },

    -- indent blankline
    IndentBlanklineChar = { fg = "#313131" },
    IndentBlanklineSpaceChar = { fg = "#313131" },
    IndentBlanklineSpaceCharBlankline = { fg = "#313131" },
    IndentBlanklineContextChar = { fg = "#365050" },

    FloatBorder = { bg = c.back },
    -- Cmp
    CmpDocumentation = { fg = c.text_default, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.highlight, bg = c.bg_float },

    CmpItemAbbr = { fg = c.text_default },
    CmpItemAbbrDeprecated = { fg = c.text_default, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = c.text_default },
    CmpItemAbbrMatchFuzzy = { fg = c.text_default },

    CmpItemKindDefault = { fg = c.type },
    CmpItemMenu = { fg = c.comment },

    CmpItemKindKeyword = { fg = c.base },

    CmpItemKindVariable = { fg = c.macro },
    CmpItemKindConstant = { fg = c.macro },
    CmpItemKindReference = { fg = c.macro },
    CmpItemKindValue = { fg = c.macro },

    CmpItemKindFunction = { fg = c.undo },
    CmpItemKindMethod = { fg = c.undo },
    CmpItemKindConstructor = { fg = c.undo },

    CmpItemKindClass = { fg = c.paste },
    CmpItemKindInterface = { fg = c.paste },
    CmpItemKindStruct = { fg = c.paste },
    CmpItemKindEvent = { fg = c.paste },
    CmpItemKindEnum = { fg = c.paste },
    CmpItemKindUnit = { fg = c.paste },

    CmpItemKindModule = { fg = c.str_constant },

    CmpItemKindProperty = { fg = c.macro },
    CmpItemKindField = { fg = c.macro },
    CmpItemKindTypeParameter = { fg = c.macro },
    CmpItemKindEnumMember = { fg = c.macro },
    CmpItemKindOperator = { fg = c.macro },
    CmpItemKindSnippet = { fg = c.type },

    -- Mutt-Mail:
    mailHeader = { fg = c.keyword },
    mailHeaderKey = { fg = c.keyword },
    mailHeaderEmail = { fg = c.macro },
    mailSubject = { fg = c.macro, style = "italic" },

    mailQuoted1 = { fg = c.type },
    mailQuoted2 = { fg = c.text_default },
    mailQuoted3 = { fg = c.base },
    mailQuoted4 = { fg = c.highlight },
    mailQuoted5 = { fg = c.str_constant },
    mailQuoted6 = { fg = c.undo },

    mailQuotedExp1 = { fg = c.milk },
    mailQuotedExp2 = { fg = c.text_default },
    mailQuotedExp3 = { fg = c.base },
    mailQuotedExp4 = { fg = c.highlight },
    mailQuotedExp5 = { fg = c.str_constant },
    mailQuotedExp6 = { fg = c.undo },

    mailSignature = { fg = c.comment },
    mailURL = { fg = c.undo, style = "underline" },
    mailEmail = { fg = c.str_constant },

    rainbowcol1 = { fg = c.macro },
    rainbowcol2 = { fg = c.str_constant },
    rainbowcol3 = { fg = c.keyword },
    rainbowcol4 = { fg = c.type },
    rainbowcol5 = { fg = c.pop2 },
    rainbowcol6 = { fg = c.highlight },
    rainbowcol7 = { fg = c.operator_alt },

    -- Illuminate:
    IlluminatedWordText = { bg = c.margin_hover },
    IlluminatedWordRead = { bg = c.margin_hover },
    IlluminatedWordWrite = { bg = c.margin_hover },

    TelescopeBorder = { fg = c.back },
    TelescopePromptCounter = { fg = c.text_default },
    TelescopePromptBorder = { fg = c.text_default },
    TelescopePromptNormal = { fg = c.text_default },
    TelescopePromptPrefix = { fg = c.keyword },

    TelescopeNormal = { bg = c.back },

    TelescopePreviewTitle = { fg = c.background },
    TelescopePromptTitle = { fg = c.background },
    TelescopeResultsTitle = { fg = c.back, bg = c.text_default },

    TelescopeSelection = { bg = c.diff.change },
  }

  if config.transparent_mode then
    theme.base = vim.tbl_extend("force", theme.base, {
      Visual = { bg = c.highlight },
      MultiCursor = { bg = c.highlight },
      Cursor = { bg = c.str_constant, c.highlight_cursor_line },
    })
  end

  theme.base = vim.tbl_extend("force", theme.base, config.highlights or {})
  return theme
end

return M
