# installs elixir and erlang
brew install elixir

# installs hex
mix local.hex

# isntalls phoenix
mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v1.0.3/phoenix_new-1.0.3.ez

# gets all out of date dependencies
mix deps.get

# update the given dependencies
mix deps.update

# install the package manager npm (node package manager) and node
brew install npm

# install the actuall npm dependencies
npm install

# starts aplications and their servers
mix pheonix.server
