# pluto.nvim

A dark Neovim colour scheme taken from the New Horizons photo of Pluto: the cream and peach of the heart, the violet-grey of the plains and their shadows, and the oxblood of the dark equatorial band. The palette keeps the photo's low saturation and roughly its proportions: mostly cream, peach and violet-grey, with oxblood used sparingly.

## Install

```lua
vim.pack.add({ "https://github.com/carldaws/pluto.nvim" })
require("pluto").setup()
vim.cmd.colorscheme("pluto")
```

## Options

```lua
require("pluto").setup({
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
})
```

`transparent` clears the background of the editor, floating windows and folds, so the terminal shows through.

`on_colors` can change the palette in `lua/pluto/palette.lua` before highlights are built. `on_highlights` can change any highlight group before it is set.

## Plugins

Highlights are tuned for lualine (`theme = "pluto"`, or the default `"auto"`), mini.icons, mini.pick and oil.nvim. Anything that links to the built-in groups will follow along.

## Extras

`extras/ghostty/pluto` is a matching Ghostty theme. Copy it to `~/.config/ghostty/themes/pluto` and set `theme = pluto`.
