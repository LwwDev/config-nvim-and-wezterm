-- Options are automatically loaded before lazy.nvim startup
-- Default options:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shell = "pwsh"
vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.cursorline = false
vim.opt.cursorlineopt = "number"

vim.opt.scrolloff = 8
vim.opt.wrap = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.mouse = ""
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Let LazyVim handle folding. Only make it look cleaner.
vim.opt.foldtext = ""
vim.opt.fillchars:append({
  fold = " ",
  eob = " ",
})

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Persistent undo
vim.opt.undofile = true

-- Completion menu
vim.opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
}

-- Disable unused providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter", "BufEnter" }, {
  callback = function()
    vim.api.nvim_set_hl(0, "Folded", {
      fg = "#666666",
      bg = "NONE",
      italic = false,
    })

    vim.api.nvim_set_hl(0, "FoldColumn", {
      bg = "NONE",
    })

    vim.api.nvim_set_hl(0, "CursorLine", {
      bg = "NONE",
    })

    vim.api.nvim_set_hl(0, "CursorLineFold", {
      bg = "NONE",
    })
  end,
})
