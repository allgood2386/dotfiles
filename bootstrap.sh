# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
	  echo "Installing homebrew..."
	    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

binaries=(
	ansible
	apple-gcc42
	autoconf
	automake
	awscli
	axel
	bash
	bash-completion
	cheat
	cloog
	cmake
	composer
	coreutils
	cowsay
	drupal-code-sniffer
	ec2-ami-tools
	ec2-api-tools
	flac
	fortune
	freeimage
	freetype
	gdbm
	gettext
	gfortran
	git
	git-crypt
	gmp
	htop-osx
	icu4c
	imagemagick
	isl
	jmeter
	jp2a
	jpeg
	lame
	less
	libmpc
	libogg
	libpng
	libsndfile
	libtool
	libvorbis
	libyaml
	mackup
	mariadb
	md5sha1sum
	mongodb
	mp3gain
	mpfr
	mtr
	nmap
	node
	openssl
	packer
	patchutils
	pcre
	perceptualdiff
	php-code-sniffer
	php55
	php55-apcu
	php55-xdebug
	phpunit
	pkg-config
	ponysay
	ponysay-tool
	ponythink
	python3
	rbenv
	readline
	ruby-build
	scons
	sqlite
	ssh-copy-id
	swig
	unixodbc
	unrar
	wget
	xz
	zlib
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

brew cask alfred link

brew tap caskroom/fonts

# fonts
fonts=(
  font-roboto
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

./makesymlinks.sh
