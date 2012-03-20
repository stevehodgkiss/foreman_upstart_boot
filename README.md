# ForemanUpstartBoot

Adds the line `start on runlevel [2345]` to upstart scripts exported by foreman

## Installation

Add this line to your application's Gemfile:

    gem 'foreman_upstart_boot', :require => false

## Usage

		sudo foreman export upstart-boot /etc/init -a myapp -u rails