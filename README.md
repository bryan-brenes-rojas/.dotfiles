# Dotfiles repository

It uses stow strategy to manage them

## Usage

The repository must be clone in the home directory!

for example:

> ~/.dotfiles/vim/

There is a subfolder for each program, and each subfolder is a representation of the home directory. So it should match the exact routes from the home directory.

To apply a configuration:

```bash
stow vim
```

To remove a configuration:

```bash
stow -D vim
```

## Add a new configuration

1. Create a new subfolder with the name of the program
2. Recreate the file structure
3. Copy the files to the subfolder
4. If there is already a configuration in the computer remove the files so there is no conflicting files
5. Once all files are copied execute:

```bash
stow <subfolder-name>
```

### Stowing vim

1. stow vim

2. Go to .config/coc/extensions, execute:

```bash
npm i --no-package-lock
```

or, open vim and execute:

```
CocInstall coc-angular coc-css coc-emmet coc-explorer coc-html coc-json coc-prettier coc-sh coc-snippets coc-spell-checker coc-sql coc-tslint coc-tsserver
```

All new coc extensions must be added here

3. Open vim and execute :PlugInstall

### Dependencies

#### zsh

- zsh-autosuggestions
- oh-my-zsh
- p10k
- zsh

#### neovim

- node
- lua
- base-devel / build-essentials
