# Do everything.

all : init linke defaults_macos brew

# Set initial preference.
init:
	.bin/init.sh

# Link dotfiles.
linke:
	.bin/link.sh

# Set macOS system preferences.
defaults_macos:
	.bin/defaults_macos.sh

# Set Arch Linux system preferences.
defaults_arch_linux:
	.bin/defaults_arch_linux.sh

# Install macOS applications.
brew:
	.bin/brew.sh