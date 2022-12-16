if !exists('g:vscode')
  " Start Loading Plugins
  call plug#begin('~/.local/share/nvim/plugged')

  " Smarter matchit, extends `%`
  " % / g% forward/backwards to next matching open/close word
  " [% / ]% go to prev/next surrounding word
  " z% go into nearest inner contained block
  " a% & i% text objects
  " ds% / cs% to delete/change surrounding
  " Can also do parallel editing of matches on tags
  Plug 'andymass/vim-matchup'

  " :NR open visual selection in sep window, my own fork which removes keybindings
  Plug 'yivanyuk/NrrwRgn'

  " Auto-close parens / quotes
  Plug 'jiangmiao/auto-pairs'

  " vim and tmux easy navigation
  Plug 'christoomey/vim-tmux-navigator'

  " Readline-style keybindings everywhere (e.g. <C-a> for beginning of line)
  Plug 'tpope/vim-rsi'

  " Edit surrounding quotes / parents / etc
  " "hello" ysiw"' becomes 'hello'
  Plug 'tpope/vim-surround'

  " Toggle comments and more
  Plug 'tpope/vim-commentary'

  " dim inactive buffer
  Plug 'sunjon/shade.nvim'

  " Use . to repeat plugin operations (especially tpope stuff)
  Plug 'tpope/vim-repeat'

  " Show trailing whitespace
  Plug 'bronson/vim-trailing-whitespace'

  " Automatically clear search highlights after you move your cursor.
  " Plug 'haya14busa/is.vim'

  " Unobtrusive scratch window
  " gs to open scratch window (works w/ selection)
  Plug 'mtth/scratch.vim'
  " :Scratch opens blank scratch window

  ""/apps/home/eng/config/credentials.json" Fzf is life
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " better syntax highlighting
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'

  " show buffers at top
  " Plug 'akinsho/bufferline.nvim'

  " Language server setup
  " Plug 'neovim/nvim-lspconfig'
  " Plug 'hrsh7th/nvim-compe'
  " Plug 'glepnir/lspsaga.nvim'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'akinsho/toggleterm.nvim'
  " plenary required for some lua plugins (gitsigns)
  Plug 'nvim-lua/plenary.nvim'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'lewis6991/gitsigns.nvim'

  Plug 'jparise/vim-graphql'

  " File tree
  Plug 'scrooloose/nerdtree'

  " move line/selection up or down
  Plug 'matze/vim-move'

" lua line
  Plug 'nvim-lualine/lualine.nvim'

  Plug 'tjdevries/colorbuddy.vim'

  " needed for some lua themes
  Plug 'rktjmp/lush.nvim'

  " vim kitty navigator
  Plug 'knubie/vim-kitty-navigator', {'do': 'cp ./*.py ~/.config/kitty/'}

  " telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

  " pretty icons
  Plug 'kyazdani42/nvim-web-devicons'

  " diagnostic inline
  Plug 'folke/trouble.nvim'

  Plug 'mbbill/undotree'

  " Colorschemes
  Plug 'Th3Whit3Wolf/onebuddy'
  Plug 'dracula/vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'romainl/flattened'
  Plug 'morhetz/gruvbox'
  Plug 'srcery-colors/srcery-vim'
  Plug 'Mofiqul/vscode.nvim'
  Plug 'sainnhe/everforest'
  Plug 'sainnhe/sonokai'
  Plug 'bluz71/vim-moonfly-colors'
  Plug 'bluz71/vim-nightfly-guicolors'
  Plug 'shaunsingh/moonlight.nvim'
  Plug 'sainnhe/edge'
  Plug 'mhartington/oceanic-next'
  Plug 'marko-cerovac/material.nvim'
  Plug 'projekt0n/github-nvim-theme'
  Plug 'Th3Whit3Wolf/space-nvim'
  Plug 'andreypopp/vim-colors-plain'
  Plug 'mcchrish/zenbones.nvim'
  Plug 'sainnhe/gruvbox-material'
  Plug 'nelstrom/vim-mac-classic-theme'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'savq/melange'
  Plug 'adigitoleo/vim-mellow', { 'tag': '*' }
  Plug 'mvanderkamp/cocoa.vim'
  Plug 'kamwitsta/flatwhite-vim'
  Plug 'kyazdani42/blue-moon'
  Plug 'adisen99/apprentice.nvim'
  Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
  Plug 'cocopon/iceberg.vim'
  Plug 'kyazdani42/blue-moon'
  Plug 'Th3Whit3Wolf/spacebuddy'
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'rose-pine/neovim'
  Plug 'pbrisbin/vim-colors-off'
  Plug 'rhcher/vim-paper'


  call plug#end()


  set laststatus=3

  let g:material_style = 'deepocean'


  let g:coc_node_path = '/usr/local/bin/node'

  " General config
  set termguicolors
  " let g:gruvbox_material_background = 'hard'
  " let g:github_theme_style = 'light_default'
  " let g:material_style = 'lighter'
  colorscheme nightfly

  filetype plugin indent on
  filetype plugin on
  syntax enable
  set scrolloff=10
  set nowrap
  set mouse=a
  set visualbell
  set ignorecase
  set encoding=utf-8
  set t_vb= " what is this?
  set noswapfile
  set nobackup
  set hidden
  set ruler
  set number
  set relativenumber
  set cursorline
  set smartcase
  set hlsearch
  set inccommand=nosplit " preview find and replace
  " needed for nvim/compe
  set completeopt=menuone,noselect

  " indentation
  set expandtab       " use spaces instead of tabs
  set autoindent      " autoindent based on line above, works most of the time
  set smartindent     " smarter indent for C-like languages
  set shiftwidth=2    " when reading, tabs are 2 spaces
  set softtabstop=2   " in insert mode, tabs are 2 spaces


  "persist undo history across sessions
  set undofile
  set undodir=~/.vim/undo

  " timeout for diagnostic messages, default is 4000
  set updatetime=200

  "automatically rebalance windows on resize
  autocmd VimResized * :wincmd =

  set wildmenu
  set lazyredraw

  set showcmd

  " Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
            \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
  autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

  " Better display for messages
  " set cmdheight=2

  " I don't know what this does
  set wildignore+=**/node_modules/**
  set wildignore+=*/.git/*

  " backspace (not sure if needed for neovim)
  set backspace=indent,eol,start

  " reload files changed outside vim
  set autoread

  " no extra signcolumn
  set signcolumn=yes:1

  " more natural window splits
  set splitbelow
  set splitright

  " Mappings {{{
  let mapleader=" "

  " inoremap jk <Esc>
  " inoremap kj <Esc>
  nmap <leader><leader> <C-^>

  " Esc in terminal
  tmap <Esc> <C-\><C-n>

  " Esc to close fzf window
  autocmd! FileType fzf tnoremap <buffer> <Esc> <c-c>

  " turn off Ex mode
  nnoremap Q <nop>


  nnoremap <Leader>w :w!<CR>
  nnoremap <Leader>q :q<CR>
  nnoremap <Leader>Q :qa!<CR>

  nnoremap L $
  nnoremap H ^

  nnoremap <leader>s :%s/
  nnoremap <leader>S yiw:%s/<C-r>0

  " center after search
  nnoremap n nzz
  nnoremap N Nzz

  nnoremap <silent><leader>; :noh<CR>

  " clear white space and go back to where curor was
  nnoremap <silent><leader>' mw:FixWhitespace<CR>`w


  " Copy and paste globally
  nnoremap <Leader>y "+y
  nnoremap <Leader>p "+p
  vnoremap <Leader>y "+y
  vnoremap <Leader>p "+p

  nnoremap Y y$

  " vim -commentary
  nmap <leader>c gc
  vmap <leader>c gc

  "nerdtree
  map <Leader>n :NERDTreeToggle<CR>
  map <Leader>m :NERDTreeFind<CR>

  " leader* to global search word
  nmap <Leader>* yiw:Rg <C-r>0<CR>

  " edit config
  nmap <Leader>vi :e $MYVIMRC<CR>
  nmap <Leader>R :so $MYVIMRC<CR>
  nmap <Leader>I :PlugInstall<CR>

  " prettify json
  nmap <Leader>js :set ft=json<CR>:CocCommand prettier.formatFile<CR>

  " run prettier
  nmap gpf :CocCommand prettier.formatFile<CR>

  "run jest
  nmap <leader>J :sp <Bar> term DEBUG_PRINT_LIMIT=100000 TZ=UTC npx jest --coverage=false %<CR>

  "copy entire buffer to register l and paste into node
  nmap <silent><leader>N gg"lyG:sp <Bar> term node -e "<C-r>l"<CR>

  " delete buffer ( usually after running jest )
  nmap <leader>D :bd!<CR>

  nmap <leader>j 10j
  nmap <leader>k 10k

  imap <C-Space>l console.log('----------  ----------')<Esc>12hi
  imap <C-Space>j console.log(JSON.stringify(,null,2))<Esc>8hi

  " git
  nmap <Leader>gb :Git blame<CR>
  nmap <Leader>gd :Gitsigns diffthis<CR>
  nmap <Leader>gn :Gitsigns next_hunk<CR>
  nmap <Leader>gp :Gitsigns prev_hunk<CR>
  nmap <Leader>gu :Gitsigns reset_hunk<CR>
  " open git changes in quickfix
  nmap <Leader>GD :Git! difftool<CR> 
  " window / pane
  " nmap <C-l> <C-w>l
  " nmap <C-k> <C-w>k
  " nmap <C-j> <C-w>j
  " nmap <C-h> <C-w>h

  " resize panes
  nnoremap <Up> <C-w>+
  nnoremap <Down> <C-w>-
  nnoremap <Left> <C-w><
  nnoremap <Right> <C-w>>

  " toggle term
  if has("gui_running")
    nnoremap <C-z> :ToggleTerm<CR>
    tnoremap <C-z> <C-\><C-n>:ToggleTerm<CR>
  endif

  " vim move

  vmap ∆ <Plug>MoveBlockDown
  vmap ˚ <Plug>MoveBlockUp
  nmap ∆ <Plug>MoveLineDown
  nmap ˚ <Plug>MoveLineUp

  omap L $
  omap H ^
  " }}}

  let NERDTreeMinimalUI=1

  " FZF {{{
  nmap <leader>f :GFiles<cr>|     " fuzzy find files in the working directory (where you launched Vim from) /gfiles ignores gitignore folders
  " nmap <leader>F :Files<cr>|     " fuzzy find files in the working directory (where you launched Vim from)
  nmap <leader>/ :Lines<cr>|    " fuzzy find lines in all open buffers
  nmap <leader>b :Buffers<cr>|   " fuzzy find an open buffer
  nmap <leader>r :Rg |           " fuzzy find text in the working directory
  " nmap <leader>C :Commands<cr>|  " fuzzy find Vim commands (like Ctrl-Shift-P in Sublime/Atom/VSC)
  " }}}

  " Telescope {{{
    " nmap <leader>f :Telescope find_files <CR>
  " nmap <leader>r :Telescope live_grep<CR>

  " }}}

  " Coc {{{
  "
  " Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"" " use <tab> for trigger completion and navigate to the next complete item
  " function! s:check_back_space() abort
  "   let col = col('.') - 1
  "   return !col || getline('.')[col - 1]  =~ '\s'
  " endfunction

  " inoremap <silent><expr> <Tab>
  "       \ pumvisible() ? "\<C-n>" :
  "       \ <SID>check_back_space() ? "\<Tab>" :
  "       \ coc#refresh()

  " }}}

  " LSP mappings
  " nmap gd       <Cmd>lua vim.lsp.buf.definition()<CR>
  " nmap K        :Lspsaga hover_doc<CR>
  " nmap <leader>K :Lspsaga show_line_diagnostics<CR>
  " " tab key for autocomplete
  " inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  " inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


  nmap <silent> <leader>ep <Plug>(coc-diagnostic-prev)
  nmap <silent> <leader>en <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  " nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  nmap <silent> <leader>a <Plug>(coc-codeaction-selected)

  " Use K to show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction


  autocmd User TelescopePreviewerLoaded setlocal syntax off

  " Format code
  " autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync()
  " autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync()
  " autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync()
  " autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync()

  " nvim compe {{{
  " let g:compe = {}
  " let g:compe.enabled = v:true
  " let g:compe.autocomplete = v:true
  " let g:compe.debug = v:false
  " let g:compe.min_length = 1
  " let g:compe.preselect = 'enable'
  " let g:compe.throttle_time = 80
  " let g:compe.source_timeout = 200
  " let g:compe.resolve_timeout = 800
  " let g:compe.incomplete_delay = 400
  " let g:compe.max_abbr_width = 100
  " let g:compe.max_kind_width = 100
  " let g:compe.max_menu_width = 100
  " let g:compe.documentation = v:true

  " let g:compe.source = {}
  " let g:compe.source.path = v:true
  " let g:compe.source.buffer = v:true
  " let g:compe.source.calc = v:true
  " let g:compe.source.nvim_lsp = v:true
  " let g:compe.source.nvim_lua = v:true
  " let g:compe.source.vsnip = v:true
  " let g:compe.source.ultisnips = v:true
  " let g:compe.source.luasnip = v:true
  " let g:compe.source.emoji = v:true
  " " }}}


endif

" neovim 5 lsp setup
lua << EOF
-- require'lspconfig'.tsserver.setup{}
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics, {
--         virtual_text = false,
--         signs = true,
--         underline=true
--     }
-- )
 require'nvim-treesitter.configs'.setup {
 ensure_installed = {"javascript", "typescript", "css", "tsx", "scss", "lua", "json" },  -- one of "all", "maintained" (parsers with maintainers), or a list of languages
 ignore_install = {  }, -- List of parsers to ignore installing
 highlight = {
   enable = true,              -- false will disable the whole extension
   indent = true,
   highlight = true,
   disable = {  },  -- list of language that will be disabled
   -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
   -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
   -- Using this option may slow down your editor, and you may see some duplicate highlights.
   -- Instead of true it can also be a list of languages
   additional_vim_regex_highlighting = false,
   },
   incremental_selection = {
    enable = true,
    keymaps = {
        init_selection = '<CR>',
        scope_incremental = '<CR>',
        node_incremental = '<TAB>',
        node_decremental = '<S-TAB>'
    }
   },
 textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",

        -- Or you can define your own textobjects like this
      --  ["iF"] = {
      --    python = "(function_definition) @function",
      --    cpp = "(function_definition) @function",
      --    c = "(function_definition) @function",
      --    java = "(method_declaration) @function",
        }
      }
    }
}

require("toggleterm").setup{}

-- vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha

-- require("catppuccin").setup()
-- local nightfox = require('nightfox')
--
-- -- This function set the configuration of nightfox. If a value is not passed in the setup function
-- -- it will be taken from the default configuration above
-- nightfox.setup({
--   fox = "nightfox",
--   alt_nc=true
-- })
--
-- -- Load the configuration set above and apply the colorscheme
-- nightfox.load()

require('gitsigns').setup()
 require('lualine').setup({
   extensions = {'nerdtree'},
   options = { theme = 'nightfly' },
   -- options = { theme = 'vscode' },
   sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {{ 'filename', path=1 }},
    lualine_x = {'fileformat', 'filetype'},
    lualine_y = {'location'},
    lualine_z = {'diff'}
  }
 })

require('shade').setup({
  overlay_opacity= 80,
  opacity_step=1
})
 
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }

  local actions = require("telescope.actions")
 require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
require('telescope').load_extension('fzf')
-- coc tab completion
EOF
