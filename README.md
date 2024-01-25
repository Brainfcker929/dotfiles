# Dotfiles Management with Git

Manage your dotfiles efficiently and seamlessly using a Git bare repository. This approach allows you to keep all your configuration files and scripts in a Git repository on your local machine, making it easy to track changes and deploy them to various environments. Idea inspired by [Atlassian's Git Tutorials on Dotfiles](https://www.atlassian.com/git/tutorials/dotfiles).

## Getting Started

This guide assumes you have a basic understanding of how to use Git. If you're new to Git, consider reading up on it before proceeding.

### Prerequisites

- Git installed on your system.
- Access to a terminal or command line interface.

### Initial Setup

1. **Create a Git Bare Repository**  
   A bare repository is a Git repository that doesn't contain a working directory, making it an ideal choice for managing dotfiles. To create one, open your terminal and execute the following command:

   ```shell
   git init --bare $HOME/.cfg

2. **Create an Alias to Manage Your Dotfiles**  

    ```shell
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

3. **Configure Git to Ignore Untracked Files**  

    ```shell
    config config --local status.showUntrackedFiles no

4. **Persist the Alias**  

    ```shell
    echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc

## Usage

- **Add a Dotfile**

  ```shell
  config add .vimrc
  config commit -m "Add .vimrc"‚
  config push
