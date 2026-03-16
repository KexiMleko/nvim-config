# Neovim Configuration

A personal Neovim setup built on top of [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), extended with additional plugins and custom configuration.

## Requirements

- Neovim >= 0.10.0
- Git
- A C compiler (`gcc` or `clang`) — required by some plugins
- [ripgrep](https://github.com/BurntSushi/ripgrep) — for Telescope live grep
- [fd](https://github.com/sharkdp/fd) — for faster file finding (optional)
- A [Nerd Font](https://www.nerdfonts.com/) — for icons and glyphs
- Node.js — required by some LSP servers

## Plugins

| Plugin | Purpose |
|--------|---------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/DAP/linter installer |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | File bookmarks & quick navigation |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git integration |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git diff signs in gutter |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatting |
| [undotree](https://github.com/mbbill/undotree) | Undo history tree |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlighted TODO comments |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap popup hints |
| [hardtime.nvim](https://github.com/m4xshen/hardtime.nvim) | Enforce better motion habits |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug Adapter Protocol |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto bracket pairing |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indentation guides |

## LSP Servers

Managed via Mason. Configured servers:

- `lua_ls` — Lua
- `rust_analyzer` — Rust
- `clangd` — C/C++
- `html` — HTML
- `yamlls` — YAML
- `angularls` — Angular

## Keybindings

Leader key: `<Space>`

### General

| Key | Action |
|-----|--------|
| `<Esc>` | Clear search highlights |
| `<C-d>` / `<C-u>` | Scroll half-page down/up (cursor centered) |
| `n` / `N` | Next/prev search result (cursor centered) |
| `J` / `K` (visual) | Move selected lines down/up |
| `<leader>n` | Open Netrw file explorer |
| `<leader>q` | Open diagnostic quickfix list |

### Window Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Focus left window |
| `<C-l>` | Focus right window |
| `<C-j>` | Focus lower window |
| `<C-k>` | Focus upper window |

### Harpoon

| Key | Action |
|-----|--------|
| `<leader>a` | Add current file to Harpoon list |
| `<C-e>` | Toggle Harpoon quick menu |
| `<C-f>` | Open Harpoon list in Telescope |
| `<C-h>` | Jump to Harpoon file 1 |
| `<C-j>` | Jump to Harpoon file 2 |
| `<C-k>` | Jump to Harpoon file 3 |
| `<C-l>` | Jump to Harpoon file 4 |
| `<C-S-P>` | Previous Harpoon file |
| `<C-S-N>` | Next Harpoon file |

> **Note:** Harpoon navigation keys (`<C-h/j/k/l>`) overlap with window navigation. Harpoon bindings take effect when the Harpoon menu is active.

### Telescope

| Key | Action |
|-----|--------|
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Search word under cursor |
| `<leader>sh` | Search help tags |
| `<leader>sk` | Search keymaps |
| `<leader>ss` | Select Telescope builtin |
| `<leader>sd` | Search diagnostics |
| `<leader>sr` | Resume last search |
| `<leader>s.` | Recent files |
| `<leader>sp` | Search projects |
| `<leader>sn` | Search Neovim config files |
| `<leader>s/` | Live grep in open files |
| `<leader>/` | Fuzzy search in current buffer |
| `<leader><leader>` | List open buffers |
| `<C-p>` | Git files |

### LSP (active when LSP is attached)

| Key | Action |
|-----|--------|
| `grn` | Rename symbol |
| `grr` | Go to references |
| `grd` | Go to definition |
| `grD` | Go to declaration |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `gO` | Document symbols |
| `gW` | Workspace symbols |
| `<leader>ca` | Code actions |
| `<leader>e` | Show diagnostic float |
| `]e` | Jump to next error |
| `[e` | Jump to previous error |
| `<leader>th` | Toggle inlay hints |

### Git (vim-fugitive)

| Key | Action |
|-----|--------|
| `<leader>gs` | Git status |
| `<leader>ga` | Git add current file |
| `<leader>gc` | Git commit |
| `<leader>gp` | Git push |
| `<leader>gl` | Git pull |
| `<leader>gd` | Git diff split |
| `<leader>gb` | Git blame |
| `<leader>go` | Git log |
| `<leader>gh` | Open in browser (GBrowse) |

### Terminal

| Key | Action |
|-----|--------|
| `<leader>t` | Open terminal in vertical split |
| `<Esc><Esc>` | Exit terminal mode |

## Health Check

Run `:checkhealth` inside Neovim to verify your setup and diagnose any missing dependencies.
