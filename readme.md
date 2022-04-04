# [Vim Tutorial for Beginners](https://www.youtube.com/watch?v=RZ4p-saaQkc&list=PLOtQYb9WRfK8a-eOy-y-svugArcIiGiqI&index=1)

## Instalation
`sudo apt install neovim`

## Commands

- `nvim {name_file}` open the file and if it does'nt exist create a blan new one.
- `:q` quit vim
- `:q!` quit and dismiss all the changes
- `:!{command}` execute a terminal command
- `:wq` Write and quit

## Modes
- `:` starts a command (normal mode)
- `ESC` get out of the last mode
- 'i` enters the insert mode, you can insert text before the cursor
- `a' insert mode after the cursor
- `o` insert mode on a new line
- `I` insert mode beginning of the line
- `A` insert mode end of the line
- `O` insert mode new line above

## Move
- `JKLH` optional arrows
- `arrow number` move the cursor number of times on the direction of the arrow

## Configuration 
settings permanent create a file at `vim ~/.config/nvim/init.vim`
 
- `:set number` line numbers
- `:set relativenumber` relative numbers for better movement through the file
- `:set mouse=a` active mouse
- `:set tabstop=4` tab
- `:set shiftwidth=4` shift
- `:colorscheme {press_tab}` select color 







