# Install Ruby on Rails with rbenv on Ubuntu 20.04 (Windows)
Go to Microsoft Store, Search for Ubuntu and install latest version

Now open Ubuntu in the Start menu. You'll be asked to setup a new user for Ubuntu. Remember this password as it's what you'll use later on when installing packages with sudo. The first step is to install some dependencies for Ruby and Rails.

Run commands one by one in Ubuntu terminal
```
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

```
Next we're going to be installing Ruby using a version manager called Rbenv.
Installing with rbenv is a simple two step process. First you install rbenv, and then ruby-build:

```
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

```
To install Ruby 2.7.5 and set the default version, run the following commands:
```
rbenv install 2.7.5
rbenv global 2.7.5
```
Confirm the default Ruby version matches the version you just installed.
```
ruby -v
```
The last step is to install Bundler
```
gem install bundler
```
rbenv users need to run rbenv rehash after installing bundler.
```
rbenv rehash
```
## Install Rails
```
gem install rails -v 7.0.2
rbenv rehash
rails -v
# Rails 7.0.2
```
Move into the application directory

add config.secret_key = 'value' to db/initializers/devise.rb

get the config/secrets.yml file
```
cd planning

bundle install

rake db:migrate

rails server
```
You can now visit http://127.0.0.1:3000 to view your new website!

## Source

[A guide to setting up a Ruby on Rails development environment on Ubuntu and macOS](https://gorails.com/setup/ubuntu/20.04)
