# Fenix::Common

Some deep tech part of the fenix project. Almost unusable. Please refer to fenix or fenix-client instead

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fenix-common'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fenix-common

## The fenix project
Should be separated into several parts: 

+ fenix-client: client part of app runned on the host of interest - collects data and saves it to...
+ fenix-store: db part usable for a single host or by a group of hosts. 
can be used direct together with fenix-client for a local installs. or can be separated from client 
part of app (something like my "centralized" commerce install). than client apps will achieve data using ...
+ fenix-transport: data transfer protocols. e.g. fenix-transport/json (something like im doing today)
formely was designed for communicating between client-server installs, but looks like also can be used for
communicating in some kind of clusters of ...
+ fenix-cluster: part required for creating clusters. For data storage and some heavy computing - 
e.g. defining package details by install's title. This is another reason why we need fenix-store in a fenix-client even in 
client-server installs at least as a caching copy. Looks like this will be a server's choice - will it or not accept 
unprepared data from clients. 
+ fenix-server: fenix-store + fenix-transport + some server code (rack preferable imho). also can be extended with ...
+ fenix-gui: some tool for displaying nice charts of problems density on a timeline with events marked for a host.
and any other got/analized info.
+fenix-problem

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fenix-common. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

