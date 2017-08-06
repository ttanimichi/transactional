# Transactional

Declarative transaction management for Ruby on Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'transactional'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install transactional

## Usage

Declare actions which use transaction in your Controller.

```diff
class YourController < ApplicationController
+  transactional :create, :update
+
  def index
  end

  def create
    Post.create!(name: 'john', age: 42)
    Topic.create!(title: 'invalid title')
    render plain: :created
  end

  def update
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ttanimichi/transactional.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
