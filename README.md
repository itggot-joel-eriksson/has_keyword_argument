# has_keyword_argument?
[![Gem Version](https://badge.fury.io/rb/has_keyword_argument.svg)](https://badge.fury.io/rb/has_keyword_argument)

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
