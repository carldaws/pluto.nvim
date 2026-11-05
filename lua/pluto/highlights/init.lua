return function(c, opts)
  return vim.tbl_extend(
    "error",
    require("pluto.highlights.editor")(c, opts),
    require("pluto.highlights.syntax")(c, opts),
    require("pluto.highlights.plugins")(c, opts)
  )
end
