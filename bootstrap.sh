#!/bin/sh
# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
	  echo "Installing homebrew..."
	    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

#taps

taps=(
	homebrew/dupes
	homebrew/apache
)
echo "installing binaries..."
brew tap ${taps[@]}

brew cleanup

binaries=(
	ansible
	autoconf
	awscli
	axel
	bash
	bash-completion
	cheat
	cmake
	composer
	coreutils
	ec2-ami-tools
	ec2-api-tools
	git
	jmeter
	mackup
	mariadb
	mtr
	nmap
	node
	openssl
	patchutils
	php56
	php56-apcu
	php56-xdebug
	phpunit
	rbenv
	ssh-copy-id
	unrar
	wget
)

echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup

brew install caskroom/cask/brew-cask

# Apps
apps=(
  	alfred
	appcleaner
	atom
	bettertouchtool
	chromecast
	chrome-remote-desktop-host
  	dropbox
	deluge
	evernote
	firefox
  	google-chrome
	google-drive
	gpgtools
	hipchat
	phpstorm
  	spotify
  	skitch
	skype
	totalterminal
	transmit
	vagrant
	virtualbox
  	vlc
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap caskroom/fonts

# fonts
fonts=(
  font-roboto
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

composer global require drush/drush:dev-master

./makesymlinks.sh
