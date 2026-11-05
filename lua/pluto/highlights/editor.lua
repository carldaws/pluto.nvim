local blend = require("pluto.blend")

return function(c, opts)
  local bg = opts.transparent and "NONE" or c.bg0
  local float_bg = opts.transparent and "NONE" or c.bg1
  local fold_bg = opts.transparent and "NONE" or c.bg2

  local function tint(color, alpha)
    return blend(color, c.bg0, alpha)
  end

  return {
    Normal = { fg = c.fg0, bg = bg },
    NormalFloat = { fg = c.fg0, bg = float_bg },
    FloatBorder = { fg = c.rosy_brown, bg = float_bg },
    FloatTitle = { fg = c.fg1, bg = float_bg, bold = true },

    Cursor = { reverse = true },
    CursorLine = { bg = c.bg1 },
    CursorColumn = { link = "CursorLine" },
    ColorColumn = { bg = c.bg1 },
    CursorLineNr = { fg = c.fg1, bold = true },
    LineNr = { fg = c.bg4 },
    SignColumn = { bg = bg },
    FoldColumn = { fg = c.bg4, bg = bg },
    Folded = { fg = c.fg1, bg = fold_bg },
    EndOfBuffer = { fg = c.bg2 },
    NonText = { fg = c.bg4 },
    Whitespace = { fg = c.bg3 },
    SpecialKey = { fg = c.bg4 },
    Conceal = { fg = c.purple_grey },
    MatchParen = { bg = c.bg3, bold = true },

    WinSeparator = { fg = c.bg3 },
    StatusLine = { fg = c.fg0, bg = c.bg2 },
    StatusLineNC = { fg = c.purple_grey, bg = c.bg1 },
    WinBar = { fg = c.fg0, bg = bg },
    WinBarNC = { fg = c.purple_grey, bg = bg },
    TabLine = { fg = c.purple_grey, bg = c.bg1 },
    TabLineFill = { bg = c.bg1 },
    TabLineSel = { fg = c.fg1, bg = c.bg3 },

    Visual = { bg = c.oxblood },
    Search = { fg = c.bg0, bg = c.taupe },
    IncSearch = { fg = c.bg0, bg = c.tan },
    CurSearch = { link = "IncSearch" },
    Substitute = { fg = c.bg0, bg = c.terracotta },
    QuickFixLine = { bg = c.bg2, bold = true },

    Pmenu = { fg = c.fg0, bg = c.bg1 },
    PmenuSel = { bg = c.bg3 },
    PmenuSbar = { bg = c.bg2 },
    PmenuThumb = { bg = c.bg4 },
    PmenuMatch = { fg = c.tan, bold = true },

    Directory = { fg = c.light_periwinkle },
    Title = { fg = c.tan, bold = true },
    ErrorMsg = { fg = c.terracotta },
    WarningMsg = { fg = c.fawn },
    ModeMsg = { fg = c.fg0, bold = true },
    MoreMsg = { fg = c.light_periwinkle },
    Question = { fg = c.light_periwinkle },
    OkMsg = { fg = c.grey_green },

    SpellBad = { sp = c.terracotta, undercurl = true },
    SpellCap = { sp = c.fawn, undercurl = true },
    SpellLocal = { sp = c.heather, undercurl = true },
    SpellRare = { sp = c.rosy_brown, undercurl = true },

    DiffAdd = { bg = tint(c.grey_green, 0.18) },
    DiffChange = { bg = tint(c.light_periwinkle, 0.14) },
    DiffDelete = { fg = tint(c.terracotta, 0.6), bg = tint(c.terracotta, 0.16) },
    DiffText = { bg = tint(c.light_periwinkle, 0.32) },
    Added = { fg = c.grey_green },
    Changed = { fg = c.light_periwinkle },
    Removed = { fg = c.terracotta },
    diffAdded = { link = "Added" },
    diffChanged = { link = "Changed" },
    diffRemoved = { link = "Removed" },

    DiagnosticError = { fg = c.terracotta },
    DiagnosticWarn = { fg = c.fawn },
    DiagnosticInfo = { fg = c.light_periwinkle },
    DiagnosticHint = { fg = c.heather },
    DiagnosticOk = { fg = c.grey_green },
    DiagnosticVirtualTextError = { fg = c.terracotta, bg = tint(c.terracotta, 0.1) },
    DiagnosticVirtualTextWarn = { fg = c.fawn, bg = tint(c.fawn, 0.1) },
    DiagnosticVirtualTextInfo = { fg = c.light_periwinkle, bg = tint(c.light_periwinkle, 0.1) },
    DiagnosticVirtualTextHint = { fg = c.heather, bg = tint(c.heather, 0.1) },
    DiagnosticVirtualTextOk = { fg = c.grey_green, bg = tint(c.grey_green, 0.1) },
    DiagnosticUnderlineError = { sp = c.terracotta, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.fawn, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.light_periwinkle, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.heather, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.grey_green, undercurl = true },
    DiagnosticDeprecated = { sp = c.purple_grey, strikethrough = true },

    LspReferenceText = { bg = c.bg2 },
    LspReferenceRead = { bg = c.bg2 },
    LspReferenceWrite = { bg = c.bg2, underline = true },
    LspInlayHint = { fg = c.purple_grey, bg = c.bg1 },
    LspCodeLens = { fg = c.purple_grey },
    LspSignatureActiveParameter = { fg = c.tan, bold = true },
  }
end
