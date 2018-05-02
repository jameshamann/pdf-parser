# Pdf Parser
###### A Gem to Parse XFA/Acroform PDFs into XML

[![Coverage Status](https://coveralls.io/repos/github/jameshamann/pdf-parser/badge.svg?branch=master)](https://coveralls.io/github/jameshamann/pdf-parser?branch=master)
[![CircleCI](https://circleci.com/gh/jameshamann/pdf-parser.svg?style=svg)](https://circleci.com/gh/jameshamann/pdf-parser)

This RubyGem is intended to be used with Adobe XFA/Acroform PDFs and relies heavily on both  [Nokogiri](https://github.com/sparklemotion/nokogiri) and [Origami](https://github.com/gdelugre/origami)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pdf-parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pdf-parser

## Usage


In order to parse a PDF and return it's XML data, you need to use the **.parse** method.

```ruby

Pdf::Parser.parse "somedynmaicforms.pdf"

```

This will return a [Nokogiri](https://github.com/sparklemotion/nokogiri) XML object, which you can then parse using Nokogiri's library.

```ruby

xml = Pdf::Parser.parse "somedynmaicforms.pdf"

value = xml.xpath("//AttributeName").text

```

This will return the XML data for the AttributeName so it can be used elsewhere in your app.

If you wish, you can also print the XML to the console by passing an additional arugment, true, when calling the parse method.  


```ruby

xml = Pdf::Parser.parse("somedynmaicforms.pdf", true)

```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pdf-parser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Changelog



## Code of Conduct

Everyone interacting in the Pdf::Parser project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pdf-parser/blob/master/CODE_OF_CONDUCT.md).
