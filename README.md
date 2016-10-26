# has_keyword_argument?



## API

`#has_keyword_argument?(method:, keyword:)` 

Checks if the given `method` has the defined `keyword` and returns `keyword` if all keyword arguments exists in the method, otherwise the ArgumentError message.

```ruby
def greeting(greeting:, name:)
  return '#{greeting}, #{name}!'
end

def hello(name:)
  return greeting(greeting: "Hello", name: name)
end

has_keyword_argument?(method: proc { hello(name: 'Irrelevant') }, keyword: 'name').must_equal 'name'

has_keyword_argument?(method: proc { greeting(greeting: 'Hello', name: 'Irrelevant') }, keyword: ['greeting', 'name']).must_equal ['greeting', 'name']
```
