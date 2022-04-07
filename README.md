# Planning a Greater Greater Lansing
Jump Start a Rails App developement. Fork this. Rails + Devise + Paperclip setup.

# This is built on RailsJumpStart. Pre-installed Gems:

```
gem 'devise'
gem 'slim'
gem 'paperclip'
gem 'bootstrap-sass'
gem 'simple_form'
```

Paperclip is installed and pre-configured to upload avatar for users.

Steps to implement:

git clone https://github.com/jmonberg/planning.git

cd planning

bundle install

rake db:migrate

add config.secret_key = 'value' to db/initializers/devise.rb

get the config/secrets.yml file

rails generate simple_form:installr

# TODO
Update gems for security issues.




