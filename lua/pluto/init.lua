local M = {}

local defaults = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  },
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
}

M.options = vim.deepcopy(defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", defaults, opts or {})
  M.options.styles = vim.tbl_extend("force", defaults.styles, opts and opts.styles or {})
end

function M.colors()
  local colors = vim.deepcopy(require("pluto.palette"))
  M.options.on_colors(colors)
  return colors
end

local function set_terminal_colors(c)
  local ansi = {
    c.bg3, c.terracotta, c.grey_green, c.fawn, c.light_periwinkle, c.rosy_brown, c.heather, c.fg1,
    c.purple_grey, c.terracotta, c.grey_green, c.fawn, c.light_periwinkle, c.rosy_brown, c.heather, c.fg2,
  }
  for i, color in ipairs(ansi) do
    vim.g["terminal_color_" .. i - 1] = color
  end
end

function M.load()
  local colors = M.colors()
  local highlights = require("pluto.highlights")(colors, M.options)
  M.options.on_highlights(highlights, colors)

  vim.cmd.highlight("clear")
  vim.o.background = "dark"
  vim.g.colors_name = "pluto"

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end

  if M.options.terminal_colors then
    set_terminal_colors(colors)
  end
end

return M
