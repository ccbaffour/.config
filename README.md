# Neovim, Autostart, Alacritty, and Starship Configuration

This repository contains my initial configurations for Neovim, autostart setup, Alacritty terminal customization, and Starship prompt configuration. These configurations are designed to enhance productivity and customize my development environment.

## Contents

- **Neovim**: Customized settings, key mappings, and plugins managed with Lazy Plugin Manager.
- **Autostart**: Scripts for automating startup applications and environment setup.
- **Alacritty**: Personalized themes, fonts, and key bindings for an optimized terminal experience.
- **Starship**: Configured prompt with concise information and customization options.

## Features

- **Neovim Plugins**: Includes autopairs.lua, colors.lua for themes, completions.lua for auto-completions, and more.
- **Autostart Script**: Hides the mouse cursor automatically when typing to reduce distraction.
- **Alacritty Customization**: Configured for optimal performance and visual aesthetics.
- **Starship Prompt**: Provides a minimal and informative prompt with customization options.

## Dependencies

Ensure the following dependencies are installed to fully utilize the configurations:

- **Neovim Plugins**: Managed by Lazy Plugin Manager.
- **Black**: Python code formatter. Install using `pip install black`.
- **isort**: Python import sorter. Install using `pip install isort`.
- **Stylua**: Lua code formatter for Neovim and Alacritty configurations. Install according to the [Stylua installation instructions](https://github.com/JohnnyMorganz/StyLua).
- **xbanish**: Used by the autostart script to hide the mouse cursor when typing. Install using your package manager (e.g., `sudo apt install xbanish` for Debian-based systems).

## Usage

Feel free to explore and adapt these configurations to suit your own workflow and preferences:

### Explore Configurations:

- **Neovim**: Review and modify settings in `nvim/init.lua` and `nvim/lua`.
- **Autostart**: Adjust scripts located in `autostart/`.
- **Alacritty**: Customize appearance settings in `alacritty/alacritty.toml`.
- **Starship**: Personalize your prompt configuration in `starship.toml`.

### Feedback and Contributions

Feedback, suggestions, and contributions are welcome! Feel free to open issues or pull requests.

## License

This repository does not include a specific license, which means you do not have permissions beyond those provided by fair use and fair dealing doctrines.
