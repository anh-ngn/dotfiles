-- colorscheme
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd('colorscheme tokyonight')

-- enable mouse
vim.opt.mouse = 'a'

-- sync nvim clipboard with system clipboard
vim.opt.clipboard = "unnamedplus"

-- enable line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- highlight current cursor line
vim.opt.cursorline = true

-- change scrolloff size
vim.opt.scrolloff = 10

-- change update time, fix CursorHold error
vim.opt.updatetime = 500

-- tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true


-- searching and replacing settings
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true 
vim.opt.showmode = false --Show the mode you are in on the last line
vim.opt.inccommand = "split"

-- folding settings
vim.opt.foldmethod = "syntax"
vim.opt.foldenable = false

--vim.api.nvim_command([[]]) to run multiple vim-script command
--vim.cmd() to run single vim-script command

-- Enable background buffers
vim.opt.hidden = true


-- Terminal mappings
--
local opts = { noremap = true, silent = true } 
vim.api.nvim_set_keymap('n', '<space>t', ':sp|resize 12|term<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Build c++ file with F5 and F6 keys
vim.cmd([[
	autocmd filetype cpp nnoremap <F6> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -O2   % -o %:r<CR> :sp<bar>resize 12<bar>term ./%:r < ./input.txt <CR>
	autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -O2   % -o %:r <CR> :sp<bar>resize 12<bar>term ./%:r <CR>
]])
