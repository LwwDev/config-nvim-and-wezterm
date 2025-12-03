return {
  {
    "LazyVim/LazyVim",
    opts = function()
      -- Clipboard
      vim.opt.clipboard = "unnamedplus"
      vim.opt.cursorline = false
      vim.opt.cursorlineopt = "number"
      vim.opt.foldtext = ""
      vim.opt.fillchars:append({ fold = " " })

      -- Remove fold/cursor highlights
      vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter", "BufEnter" }, {
        callback = function()
          vim.api.nvim_set_hl(0, "Folded", { fg = "#666666", bg = "NONE", italic = false })
          vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "CursorLineFold", { bg = "NONE" })
        end,
      })

      local map = vim.keymap.set

      -- Exit terminal mode
      map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

      -- Compile and run C++
      map("n", "<F5>", ":w<CR>:!g++ -std=c++17 -Wall -Wextra -o %:r % && ./%:r<CR>", { desc = "Compile & Run" })
      map("n", "<F6>", ":w<CR>:!g++ -std=c++17 -Wall -Wextra -g -o %:r %<CR>", { desc = "Compile with debug" })
      map("n", "<F7>", ":!./%:r<CR>", { desc = "Run executable" })

      -- Quick save
      map("n", "<C-s>", ":w<CR>", { desc = "Save" })
      map("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Save" })

      -- Move lines up/down
      map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
      map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
      map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
      map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

      -- Stay centered when scrolling
      map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
      map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })

      -- Better indenting
      map("v", "<", "<gv", { desc = "Indent left" })
      map("v", ">", ">gv", { desc = "Indent right" })

      -- Quick header/source switch
      map("n", "<A-o>", ":ClangdSwitchSourceHeader<CR>", { desc = "Switch header/source" })

      -- Duplicate line
      map("n", "<A-d>", "yyp", { desc = "Duplicate line" })

      -- Delete without yanking
      map("n", "<leader>d", '"_d', { desc = "Delete without yank" })
      map("v", "<leader>d", '"_d', { desc = "Delete without yank" })

      -- Undo/Redo
      map("n", "<C-z>", "u", { desc = "Undo" })
      map("n", "<C-y>", "<C-r>", { desc = "Redo" })
      map("i", "<C-z>", "<Esc>ui", { desc = "Undo" })
      map("i", "<C-y>", "<Esc><C-r>i", { desc = "Redo" })

      -- Delete word with Ctrl+Backspace
      map("i", "<C-BS>", "<C-w>", { desc = "Delete word backward" })
      map("i", "<C-H>", "<C-w>", { desc = "Delete word backward" })
    end,
  },
}
