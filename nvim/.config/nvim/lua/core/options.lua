local opt = vim.opt

-- line numbers
opt.number         = true
opt.relativenumber = true

-- splitting behavior
opt.splitright     = true
opt.splitbelow     = true

-- 4 space tabs
opt.tabstop     = 4
opt.shiftwidth  = 4
opt.softtabstop = 4
opt.expandtab   = true

-- search highlighting
opt.hlsearch       = true
opt.incsearch      = true
opt.showmatch      = true -- show matching brackets when indicator is over them

-- search behavior
opt.ignorecase     = true
opt.smartcase      = true

opt.cursorline     = true

opt.showcmd 	   = true
opt.showmode 	   = false
opt.termguicolors  = true
opt.undofile       = true

-- indent
opt.autoindent  = true
opt.smartindent = true

opt.scrolloff   = 8
opt.colorcolumn = "80"

-- opt.spelllang = "en_us,de_de"
-- opt.spell = true

opt.formatoptions = opt.formatoptions
                    - 'a'   -- no auto formatting
                    - 't'   -- don't auto format code
                    + 'q'   -- allow formatting comments with gq
                    - 'o'   -- don't continue comments
                    + 'r'   -- but do continue when pressing enter


