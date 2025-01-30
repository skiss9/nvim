local colors = require("config.colors")

local function setHighlights()
  local folderColor = colors.magenta2
  local iconColor = colors.blue3

  vim.api.nvim_set_hl(0, "Search", { fg = colors.white, bg = "#19AFB7" })
  vim.api.nvim_set_hl(0, "CurSearch", { fg = colors.white, bg = "#E65E9E" })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.white, bg = "#1E8A90" })
  vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#000000", bg = "#ECEFF4" })

  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = colors.dark })
  vim.api.nvim_set_hl(0, "NvimTreeHeader", { bg = colors.dark })
  vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = colors.magenta })
  vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = folderColor })
  vim.api.nvim_set_hl(0, "NvimTreeFolderArrowClosed", { fg = folderColor })
  vim.api.nvim_set_hl(0, "NvimTreeFolderArrowOpen", { fg = folderColor })
  vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = colors.white2 })
  vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = colors.white2 })

  vim.api.nvim_set_hl(0, "ToggleTerm", { bg = colors.dark })

  vim.api.nvim_set_hl(0, "Normal", { bg = colors.dark2 })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.dark })
  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.dark3 })

  vim.api.nvim_set_hl(0, "@function.call", { fg = colors.white2 })
  vim.api.nvim_set_hl(0, "@function", { fg = colors.blue4 })
  vim.api.nvim_set_hl(0, "@variable.parameter", { fg = colors.blue2 })
  vim.api.nvim_set_hl(0, "@variable", { fg = colors.blue3 })
  vim.api.nvim_set_hl(0, "@property", { fg = colors.blue4 })
  vim.api.nvim_set_hl(0, "@keyword", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "@string", { fg = colors.green })
  vim.api.nvim_set_hl(0, "@comment", { fg = colors.dark3 })
  vim.api.nvim_set_hl(0, "@type", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "@parameter", { fg = colors.red })
  vim.api.nvim_set_hl(0, "@constant", { fg = colors.yellow })
  vim.api.nvim_set_hl(0, "@number", { fg = colors.blue2 })
  vim.api.nvim_set_hl(0, "@operator", { fg = colors.magenta })

  vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = colors.magenta })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = colors.magenta })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = colors.magenta })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = colors.magenta, underline = true })
  vim.api.nvim_set_hl(0, "DiagnosticSignWarning", { fg = colors.yellow })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarning", { fg = colors.yellow })
  vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = colors.yellow })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = colors.yellow })
  vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = colors.yellow })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = colors.yellow })

  vim.api.nvim_set_hl(0, "DevIconJs", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconTs", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconTestJs", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconTestTs", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconTypeScriptDeclaration", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconPy", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconLua", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconJson", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconPackageJson", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconPackageLockJson", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconGitIgnore", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconGitAttributes", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconGitConfig", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconNPMrc", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconSvelte", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconSvelteConfig", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconHtml", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconIni", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconBinaryGLTF", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconMarkdown", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconMd", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconToml", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconEslintrc", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconPrettierIgnore", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconPrettierRc", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconPrettierConfig", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconCss", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconPng", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconJpg", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconJpeg", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconDsStore", { fg = iconColor })
  vim.api.nvim_set_hl(0, "DevIconLicense", { fg = iconColor })
end

setHighlights()

vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = function()
    setHighlights()
  end,
})
