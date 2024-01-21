# Do everything.

all : init link defaults_macos brew

# Set initial preference.
init:
	script/init_macos.sh

# Link dotfiles.
link:
	script/link.sh

# Set macOS system preferences.
defaults_macos:
	script/defaults_macos.sh

# Set Arch Linux system preferences.
defaults_arch_linux:
	script/defaults_arch_linux.sh

# Install macOS applications.
brew:
	script/brew.sh