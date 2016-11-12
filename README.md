# has_keyword_argument?
[![Gem Version](https://badge.fury.io/rb/has_keyword_argument.svg)](https://badge.fury.io/rb/has_keyword_argument)
[![Gem Total downloads](https://img.shields.io/gem/dt/has_keyword_argument.svg)](https://rubygems.org/gems/has_keyword_argument)
[![Gem Stable downloads](https://img.shields.io/gem/dv/has_keyword_argument/stable.svg)](https://rubygems.org/gems/has_keyword_argument)
[![License](https://img.shields.io/github/license/itggot-joel-eriksson/has_keyword_argument.svg)](https://github.com/itggot-joel-eriksson/has_keyword_argument/blob/master/LICENSE.md)

## Installation
```
gem install has_keyword_argument
```

## API

`#has_keyword_argument?(*keyword)`

_lib/main.rb_
```ruby
def greeting(greeting:, name:)
  return "#{greeting}, #{name}!"
end

def hello(name:)
  return "Hello #{name}"
end
```

_test/test_main.rb_
```ruby
require 'has_keyword_argument'

require_relative '../lib/main'

:hello.has_keyword_argument?(:name)

:greeting.has_keyword_argument?(:greeting, :name)
```
