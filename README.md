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
5. Once all files a copied execute:

```bash
stow <subfolder-name>
```
