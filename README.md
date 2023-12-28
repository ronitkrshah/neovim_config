# Neovim Config

Welcome to my personal and minimal Neovim configuration!

<br />

## Overview

This Neovim setup is geared towards simplicity and efficiency. Most of the plugins are lazy-loaded to keep startup times fast.

<br />

## Features

* **Lazy Loading**: Plugins are loaded on-demand, ensuring a quick and responsive Neovim experience.
* **Completion with coc.nvim**: Enjoy powerful completion using **coc.nvim** for an enhanced coding experience.
* **Fast Startup**: Last time when i checked it was **0.07 secs**(If i'm not wrong) on Termux
    ```log
    070.558  001.239: first screen update
    070.561  000.003: --- NVIM STARTED ---
    ```

<br />

## Dependencies

* **clang**: Required for treesitter syntax highlighting.
* **Node.js**: Necessary for LSP (Language Server Protocol) and completion with coc.nvim.

<br />

## Installation


1. Install the required dependencies:

```bash
# Example Installation on Ubuntu
sudo apt install clang nodejs
```

2. Clone this repository to your Neovim config directory:

```bash
git clone https://github.com/ronitkrshah/neovim_config.git ~/.config/nvim
```

3. Install Language Servers (By default no Language Servers are Installed). Example:
```vim
" JavaScript / Typescript
:CocInstall coc-tsserver

" Python
:CocInstall coc-pyright

" Search for you favourite Language Server and install it when needed
```

4. Enable Syntax Highlighting via Treesitter
```vim
:TSInstall javascript typescript tsx python
```

<br />

# Usage
* Open Neovim and enjoy the streamlined and minimal setup!
* Use key bindings and the `Lazy load <plugin>` command to activate specific plugins when needed.

<br />

# Additional Notes
Feel free to customize and adapt this configuration to suit your preferences.

<br />
Happy coding!
