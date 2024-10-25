local sidebarBackground = "#1C202C"
-- local folderColor = "#E65E9E"
local folderColor = "#C43076"
local iconColor = "#78C2D2"

vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = sidebarBackground })
vim.api.nvim_set_hl(0, "NvimTreeHeader", { bg = sidebarBackground })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = folderColor })

vim.api.nvim_set_hl(0, "Search", { fg = "#FFFFFF", bg = "#19AFB7" })
vim.api.nvim_set_hl(0, "CurSearch", { fg = "#FFFFFF", bg = "#E65E9E" })
vim.api.nvim_set_hl(0, "IncSearch", { fg = "#FFFFFF", bg = "#1E8A90" })

vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#000000", bg = "#ECEFF4" })

vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = folderColor })
vim.api.nvim_set_hl(0, "NvimTreeFolderArrowClosed", { fg = folderColor })
vim.api.nvim_set_hl(0, "NvimTreeFolderArrowOpen", { fg = folderColor })

vim.api.nvim_set_hl(0, "DevIconJs", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconTs", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconTestJs", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconTestTs", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconTypeScriptDeclaration", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconPy", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconJson", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconPackageJson", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconPackageLockJson", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconGitIgnore", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconGitAttributes", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconNPMrc", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconSvelte", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconSvelteConfig", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconHtml", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconIni", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconBinaryGLTF", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconMarkdown", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconMd", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconEslintrc", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconPrettierIgnore", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconPrettierRc", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconPrettierConfig", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconCss", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconPng", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconJpg", { fg = iconColor })
vim.api.nvim_set_hl(0, "DevIconJpeg", { fg = iconColor })
