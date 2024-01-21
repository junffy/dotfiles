# Do everything.

all : init defaults_macos brew

# Set initial preference.
init:
	script/init.sh

# Link dotfiles for macos.
link_macos:
	script/link_macos.sh

# Link dotfiles for arch linux.
link_arch_linux:
	script/link_arch_linux.sh

# Set macOS system preferences.
defaults_macos:
	script/defaults_macos.sh

# Set Arch Linux system preferences.
defaults_arch_linux:
	script/defaults_arch_linux.sh

# Install macOS applications.
brew:
	script/brew.sh