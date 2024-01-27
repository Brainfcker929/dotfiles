#!/bin/bash

install_homebrew() {
    echo "Installiere Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

if ! command -v brew &> /dev/null
then
    echo "Homebrew ist not installed."
    install_homebrew

    if ! command -v brew &> /dev/null
    then
        echo "Error during the installation of Homebrew. Script is terminated."
        exit 1
    fi
fi

echo "Installing Homebrew-Packages..."
while IFS= read -r package
do
    echo "Installing package: $package..."
    brew install "$package"
done < brew_packages.txt

echo "Installing Casks..."
while IFS= read -r cask
do
    echo "Installiere Cask: $cask..."
    brew install --cask "$cask"
done < brew_casks.txt

echo "All Packages and Casks are installed."
