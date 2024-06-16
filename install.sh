# Exit immediately if a command exits with a non-zero status
set -e

# Needed for all installers
sudo apt update -y
sudo apt install -y curl git unzip

# Run installers
omakub_install_path="~/.local/share/omakub/install"
omakub_on_wsl_install_path="~/.local/share/omakub-on-wsl"

if [ -d ${omakub_on_wsl_install_path} ]; then
	source "${omakub_on_wsl_install_path}/a-shell.sh"
fi

if [ -d ${omakub_install_path} ]; then
	source "${omakub_install_path}/app-fastfetch.sh"
	source "${omakub_install_path}/app-github-cli.sh"
	source "${omakub_install_path}/app-gum.sh"
	source "${omakub_install_path}/app-lazydocker.sh"
	source "${omakub_install_path}/app-lazygit.sh"
	source "${omakub_install_path}/app-neovim.sh"
	source "${omakub_install_path}/app-zellij.sh"
	source "${omakub_install_path}/apps-terminal.sh"
	source "${omakub_install_path}/docker.sh"
	source "${omakub_install_path}/flatpack.sh"
	source "${omakub_install_path}/libraries.sh"
	source "${omakub_install_path}/mise.sh"
	source "${omakub_install_path}/libraries.sh"
	source "${omakub_install_path}/select-dev-env.sh"
	source "${omakub_install_path}/set-git.sh"
fi

# Upgrade everything that might ask for a reboot last
sudo apt upgrade -y
