# Dynaccount
[![Gem Version](https://badge.fury.io/rb/dynaccount.svg)](https://badge.fury.io/rb/dynaccount)

This dynaccount gem is created to create an ActiveRecord-like interaction to [Dynaccount](https://dynaccount.com), accounting system's API.

The current API-version is `v7`.

## Usage

### config/initializers/dynaccount.rb
```ruby
Dynaccount.api_id = "key"
Dynaccount.api_key = "key"
Dynaccount.api_secret = "key"
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'dynaccount', github: 'prograsdk/dynaccount'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install dynaccount
```

## Todo
 * Support Streaming reports.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
