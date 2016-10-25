# has_keyword_argument?



## API

`#has_keyword_argument?(method:, keyword:)` 

Checks if the given `method` has the defined `keyword` and returns `true` if all keyword arguments exists in the method, otherwise `false`.

```ruby
def greeting(greeting:, name:)
  return '#{greeting}, #{name}!'
end

def hello(name:)
  return greeting(greeting: "Hello", name: name)
end

has_keyword_argument?(method: hello(name: 'Irrelevant'), keyword: 'name').must_equal 'name'

has_keyword_argument?(method: greeting(greeting: "Hello", name: 'Irrelevant'), keyword: ['greeting', 'name']).must_equal ['greeting', 'name']
```