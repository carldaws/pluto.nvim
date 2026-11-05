local function rgb(hex)
  return tonumber(hex:sub(2, 3), 16), tonumber(hex:sub(4, 5), 16), tonumber(hex:sub(6, 7), 16)
end

return function(fg, bg, alpha)
  local fr, fg_, fb = rgb(fg)
  local br, bg_, bb = rgb(bg)
  local function mix(a, b)
    return math.floor(alpha * a + (1 - alpha) * b + 0.5)
  end
  return string.format("#%02x%02x%02x", mix(fr, br), mix(fg_, bg_), mix(fb, bb))
end
