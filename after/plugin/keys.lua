-- my keybindings

-- "for" "surrounding" "text" "with" "things"
-- use { "tpope/vim-surround"}
-- help surround
-- surround text map is: 
-- ds -> [D]elete [S]urround
-- cs -> [C]hange [S]urround
-- yss( -> [Y]ep  [S]urround [S]urround with ( x )
-- yssb -> same as above but without spaces
-- yssB -> same as about but with {} 
-- ysiw] -> [Y]ep [S]urround [I]n [W]ord and wrap with [] no space
-- ] } ) > -> no space 
-- [ { ( < -> with space
-- b & B are mapped to ( & { repectively

-- tpope/vim-unimpaired shortcuts
-- help unimpared
-- [<space> -> newline before cursor
-- ]<space> -> newline after cursor
-- [f -> go to next file in directory
-- ]f -> go to previous file in directory

vim.keymap.set('n', '<leader>o', 'o<Esc>0"_D')
vim.keymap.set('n', '<leader>O', 'O<Esc>0"_D')

-- move highlighted stuff in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J appends line below while keeping cursor in place
vim.keymap.set("n", "J", "mzJ`z")
-- Keeps screen jumps in middle of screen.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- search terms stay in middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever: keep delete highlighted word into the 
-- voided register and keep current register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- Yank into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete into void register 
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled map ctrl-c to esc to handle edge cases
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Discable macro recording
-- vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace current word
vim.keymap.set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- makes file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Ex commands 
-- Open new file in tab
vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("n", "<leader>t", ":Tex<CR>")
