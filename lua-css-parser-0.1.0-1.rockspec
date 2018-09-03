package = "lua-css-parser"
version = "0.1.0-1"
source = {
  url = "https://github.com/michal-h21/lua-css-parser/archive/v0.1.0.tar.gz",
  dir = "lua-css-parser-0.1.0-1"
}
description = {
  summary = "Lua CSS parser",
  detailed = [[
    Pure Lua CSS parser and CSSOM library
  ]],
  homepage = "https://github.com/michal-h21/lua-css-parser/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lpeg",
}
build = {
  type = "builtin",
   modules = {
    [cssparser] = "src/lua-css-parser.lua"
  }
}
