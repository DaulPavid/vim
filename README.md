# DaulPavid vim configuration

A fast, minimal Vim 9 configuration using native packages (no plugin manager).
Plugins are git submodules under `pack/plugins/start/`. The onedark theme is kept.

Requires `fzf` and `ripgrep` on `PATH` (installed by the dotfiles repo).

## Install

```
$ git clone https://github.com/DaulPavid/vim.git
$ cd vim
$ ./setup_plugin
$ ./link
```

Remove the symlinks (and restore backups) with:

```
$ ./unlink
```

## Plugins

- onedark.vim — colorscheme
- fzf + fzf.vim — fuzzy finder (file/buffer/grep)
- vim-gitgutter — git diff signs in the gutter
- vim-better-whitespace — highlight + strip trailing whitespace
- vim-commentary — `gcc` / `gc{motion}` to comment
- vim-surround — `ys` / `cs` / `ds` to add/change/delete surroundings
- vim-repeat — `.` repeats surround/commentary

## Keymaps

Leader is `Space`.

| Key          | Action                  |
|--------------|-------------------------|
| `jk`         | escape (insert mode)    |
| `<C-p>`      | fuzzy file open         |
| `<leader>f`  | fuzzy file open         |
| `<leader>b`  | switch buffer           |
| `<leader>g`  | live grep (ripgrep)     |
| `<leader>w`  | save                    |
| `<leader>/`  | clear search highlight  |
