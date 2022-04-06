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
- `v` visual mode
- `d` delete selection
- `dd` delete whole line
- `D` delete from the cursor trhough the end
- `y` copy
- `yy` copy the whole line
- `p` paste
- `P` paste above the line or before the cursor
- `c` change
- `cc` Insert mode to change all of the line
- `r` Replace mode

## Key bidings
- `u` In normal mode, undid the action
- `{number}u` normal mode, number of undos back
- `ctrl+r` normal mode, redo
- `{number}ctrl+r` nomal mode, number of redos
- `w` jump to the next word
- `W` jump to the next word ignoring special characters
- `b` jump backwards
- `B` jump backwards ignoring special characters
- `dw` delete next word
- `{number}dw` delete number of words
- `{number}db` delete number of words backwards
- `diw` delete in a word
- `ciw` change in a word
- `d0` delete every thing to the start
- `d$` delete every thing to the end
- `yiw` yank in a word, copy the word

### Useful in codding
- `ci{simbol}' change innter text of the simbol
- ` 
## Move
- `JKLH` optional arrows
- `arrow number` move the cursor number of times on the direction of the arrow
- `e` end of the word
- `0` Begin of the line
- `$` end of the line
- `%` jump to the end/start of a simbol (){}....
- `t{simbol}` jump position before the simbol
- `T{simbol}` jump backwards before the simbol
- `f{simbol}` (find) jump to position of the simbol
- `F{simbol}` jump backwards to position of the simbol
- `gg` Jump begining of the file
- `G` jump to the end of the file
- `{number}G` jump to the number line
- `:{number}` jump to the number line


## Configuration 
settings permanent create a file at `vim ~/.config/nvim/init.vim`
 
- `:set number` line numbers
- `:set relativenumber` relative numbers for better movement through the file
- `:set mouse=a` active mouse
- `:set tabstop=4` tab
- `:set shiftwidth=4` shift
- `:colorscheme {press_tab}` select color 







