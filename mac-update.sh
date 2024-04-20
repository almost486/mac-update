mac-update () {
    RED='\033[0;31m'
    NC='\033[0m'
    echo "Checking for macOS updates..."
    echo -e "${RED}sudo softwareupdate -l -a;\n${NC}"
    sudo softwareupdate -l -a
    echo "------------------------------------------------------------"
    echo "Updating Homebrew and its installed packages..."
    echo -e "${RED}brew update; brew upgrade;  brew upgrade --cask; brew cleanup; \n${NC}"
    brew update; brew upgrade;  brew upgrade --cask; brew cleanup;
    echo "------------------------------------------------------------"
    echo "Updating npm and its installed packages..."
    echo -e "${RED}npm install npm -g; npm update -g;\n${NC}"
    npm install npm -g; npm update -g;
    echo "------------------------------------------------------------"
    if [ -x "$(command -v pip3)" ]; then
        echo "Updating installed pip3 packages..."
        echo -e "${RED}pip-review --auto\n${NC}"
        pip-review --auto
        echo "------------------------------------------------------------"
    fi
}