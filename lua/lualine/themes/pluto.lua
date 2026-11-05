local c = require("pluto").colors()

local function mode(fg, bg)
  return {
    a = { fg = fg, bg = bg, gui = "bold" },
    b = { fg = c.fg1, bg = c.bg3 },
    c = { fg = c.fg0, bg = c.bg2 },
  }
end

return {
  normal = mode(c.bg0, c.tan),
  insert = mode(c.bg0, c.heather),
  visual = mode(c.bg0, c.rosy_brown),
  replace = mode(c.bg0, c.terracotta),
  command = mode(c.bg0, c.taupe),
  terminal = mode(c.bg0, c.fg1),
  inactive = {
    a = { fg = c.purple_grey, bg = c.bg1 },
    b = { fg = c.purple_grey, bg = c.bg1 },
    c = { fg = c.purple_grey, bg = c.bg1 },
  },
}
