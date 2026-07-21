local opt = vim.opt

opt.fileencodings = { "utf-8", "gbk", "gb2312", "big5" }
opt.fileformats = { "unix", "dos" }

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.numberwidth = 4
opt.colorcolumn = "80"
opt.laststatus = 2
opt.showcmd = true
opt.showmatch = true
opt.matchtime = 2

opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.list = true
opt.listchars = { tab = "▸ ", trail = "·", extends = "❯", precedes = "❮" }
opt.wrap = true
opt.linebreak = true

opt.mouse = "a"
opt.mousemodel = "popup"
opt.backspace = { "indent", "eol", "start" }
opt.whichwrap:append("<,>,h,l,[,]")

opt.wildmode = { "list", "longest" }
opt.wildignore:append({ "*.o", "*~", "*.pyc", "__pycache__", "node_modules", ".git", ".svn" })

opt.splitbelow = true
opt.splitright = true
opt.equalalways = true

local tmpdir = vim.fn.stdpath("config") .. "/tmp"
opt.backup = true
opt.backupdir = { tmpdir .. "/backup//" }
opt.undofile = true
opt.undodir = { tmpdir .. "/undo//" }

opt.foldenable = true
opt.foldlevelstart = 10
opt.foldnestmax = 10
opt.foldmethod = "indent"

opt.updatetime = 300
opt.timeoutlen = 500

if vim.fn.has("clipboard") == 1 then
  opt.clipboard = "unnamedplus"
end

opt.autoread = true
opt.termguicolors = true
