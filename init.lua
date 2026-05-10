--[[
	This is Manish Kausik H's neovim configuration.
--]]

-- Core settings for neovim, ex vim.g and vim.o/opt options
require("basic-settings")


-- Welcome to me!
print("Yo! Ready to code?");

-- Empty at the moment
--require("basic-keymaps")

-- If any plugins are not pure-lua based, and have components that must be built, then they are required to be added in here.
require("pack-plugin-manager")

-- Any new plugin you add must be added to load-plugins.lua
require("load-plugins")


