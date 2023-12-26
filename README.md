# Scopelist

A simple way to track scopes in ActiveRecord.

NOTE: Tested on Ruby 3.0 and later. Older versions may work but are not supported.

NOTE: Rails 6.1 to 7.1 are officially supported. Older versions down to 4.2 may work but are not supported.

![Build Status](https://github.com/t27duck/scopelist/workflows/CI/badge.svg)

## Installation

Add this line to your application's Gemfile:

    gem 'scopelist'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scopelist

## Usage

Get a list of scopes in any model:

```ruby
class MyModel < ActiveRecord::Base
  scope :a_scope, -> {...}
  scope :another_scope, -> {...}
  ...
end

MyModel.available_scopes
=> [:a_scope, :another_scope, ...]
```

Now scopes are really just class methods. If you'd like to include class methods that act like scopes, you can append the list easily.

```ruby
class MyModel < ActiveRecord::Base
  ...

  def self.some_scope
    where(...)
  end
  additional_available_scope :some_scope
end

MyModel.available_scopes
=> [:a_scope, :another_scope, :some_scope, ...]
```

## Contributing

1. Fork it ( http://github.com/t27duck/scopelist/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
