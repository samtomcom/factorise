# Factorise

Take a number and factorise it. :)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'factorise'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install factorise

## Usage

    24.factorise
    => [2, 2, 2, 3]

    24.factoriseh
    => {2=>3, 
        3=>1
       }

    24.nonprime
    => [1, 2, 3, 4, 6, 8, 12, 24]

    24.factorpairs
    => [[1, 24],
        [2, 12],
        [3, 8],
        [4, 6]
       ]

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake true` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/samtomcom/factorise. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Factorise project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/samtomcom/factorise/blob/master/CODE_OF_CONDUCT.md).
