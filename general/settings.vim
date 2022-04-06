let mapleader = "\<Space>"
syntax enable 				    "Enables syntax highlighing
set hidden					      "Required to keep multiple buffers open 
set encoding=utf-8			  "Encoding displayed
set pumheight=10			    "Poup menu smaller
set fileencoding=utf-8		"Encoding written to file
set ruler					        "Show the cursor position all the time
set cmdheight=2		      	"More space for displaying messages
set iskeyword+=-		      "Treat dash separated words as a word text object
set mouse=a					      "Enables mouse
set splitbelow			      "Horizontal splits will automatically be below
set splitright			      "Vertical splits will be to the right
set t_Co=256				      "Support 256 colors
set tabstop=2				      "Spaces width tab
set shiftwidth=2		      "Change the number of space characters inserted for indentation	
set smarttab				
set expandtab				      "Converts tabs to spaces
set smartindent				
set autoindent				
set laststatus=0			    "Always display the status line
set number					
set cursorline				    "Enable highligting of the current line
set cursorlineopt=number
set background=dark				
set showtabline=2			    "Always show tabs
"set noshowmode  			    "Don't Show --Inser-- ...
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=100
set formatoptions-=cro
set clipboard+=unnamedplus
"colorscheme onedark
"set autochdir
au! BufWritePost $MYVIMRC source % "Auto souce when writing to init.vim alternativoly you can run :source :MYVIMRC
"You can't stop me
cmap w!! w!sudo tee %
