require('palsarip.base')
require('palsarip.highlights')
require('palsarip.maps')
require('palsarip.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('palsarip.macos')
end
if is_linux == 1 then
  require('palsarip.linux')
end
if is_win == 1 then
  require('palsarip.windows')
end
if is_wsl == 1 then
  require('palsarip.wsl')
end

local themeStatus, kanagawa = pcall(require, "kanagawa")

if themeStatus then
  vim.cmd("colorscheme kanagawa")
else
  return
end
