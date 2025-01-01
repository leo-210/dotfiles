# Léo-21's Dotfiles

Hi ! These are my dotfiles for my different configurations. Every branch is a different configuration, apart from the main branch, which holds the README.md file you're currently reading.

Each branch is named following this format : [OS]-[Window Manager/Desktop environment]-[Laptop or Desktop PC]

## Installation

This repo is designed to works with git bare repositories, and I could make it work thanks to [this guide by Atlassian](https://www.atlassian.com/git/tutorials/dotfiles).

Then follow those steps in your home directory:
- Choose the branch you want to install.
- Create an alias/abbreviation in your current shell (this step may vary depending on which shell you're using. If you use bash or zsh :
  ```bash
  alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
  ```
- Create a .gitignore file to avoid weird recursion problems :
  ```bash
  echo ".dotfiles" >> .gitignore
  ```
- Clone the branch you want into a bare repository :
  ```git
  git clone --bare --branch <the branch you chose> --single-branch $HOME/.dotfiles
  ```
- Using the alias you created, checkout the content of the repository :
  ```git
  dotfiles checkout
  ```

  If this last step fails with an error, make sure there's no configuration files in your home directory which would be overwritten
  by Git

