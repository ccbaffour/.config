-- Control buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>", { desc = "Move to next tab" })
vim.keymap.set("n", "<leader>p", ":bp<cr>", { desc = "Move to previous tab" })
vim.keymap.set("n", "<leader>x", ":bd<cr>", { desc = "Close current tab" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<C-e>", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })

-- Execute scripts with macro
vim.cmd([[
  augroup run_file
    autocmd BufEnter *.java let @g=":w\<cr> :vsp | terminal java %\<cr>i" 
    autocmd BufEnter *.py let @g=":w\<cr> :vsp | terminal python %\<cr>i"
    autocmd BufEnter *.js let @g=":w\<cr> :vsp | terminal node %\<cr>i" 
    autocmd BufEnter *.go let @g=":w\<cr> :vsp | terminal go run %\<cr>i"
    autocmd BufEnter *.html let @g=":w\<cr> :silent !google-chrome --guest --new-window % & \<cr>"
    autocmd BufEnter *.c let @g=":w\<cr> :!gcc %\<cr> | :vsp | terminal ./a.out\<cr>i"
    autocmd BufEnter *.cpp let @g=":w\<cr> :!g++ %\<cr> | :vsp | terminal ./a.out\<cr>i"
    autocmd BufEnter *.asm let @g=":w\<cr> :!nasm -f elf64 -o out.o % && ld out.o -o a.out \<cr> | :vsp | terminal ./a.out \<cr>i"
    autocmd BufEnter *.sh let @g=":w\<cr> :!chmod +x %\<cr> | :vsp | terminal bash %\<cr>i"
]])

-- Terminal
vim.keymap.set("n", "<leader>tt", "<cmd>vsp | terminal<cr>", { desc = "[T]erminal" })

-- Map <Esc> to exit insert mode in terminal
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true, desc = "[E]xit terminal mode" })
