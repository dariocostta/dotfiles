### About
Here you find my (dariocostta) configuration files for some tools.

For now I have set:
- nvim
- vim
- bash

### Small description for each
#### nvim and vim

The config is directly derived from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). With some extra keymaps (that I have set in vim too) and plugins.

#### bash

The bash config tries to make it more like nvim. Setting up the command prompt to look like lualine, with git information and a better style.
Added three commands to make life easier:
- nvf(): uses fzf to fuzzy find the file that will be opened in Nvim, with bat as the preview window.
- hf(): history of commands to search with fzf. (yes, I love fzf)
- cdf(): cd to the directory, but use fzf to find it first.
