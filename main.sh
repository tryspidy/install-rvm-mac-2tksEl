# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install GPG
brew install gpg

# Import Keys
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

#Trust Keys
echo 409B6B1796C275462A1703113804BB82D39DC0E3:6: | gpg --import-ownertrust
echo 7D2BAF1CF37B13E2069D6956105BD0E739499BDB:6: | gpg --import-ownertrust

# Install RVM
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles

# To start using RVM
source $HOME/.rvm/scripts/rvm

# To check RVM has installed
rvm --version
