# OpenTreeStruct
Recursive OpenStruct based tree

## Example of usage:

`$ gem install open_tree_struct`

Ruby source code:

```
require 'open_tree_struct'

person = OpenTreeStruct.new({details: {birth: {day: 28, month: 'Oct', year: 1948}, name: 'Albert'}})

puts person.details.birth.day # 28
puts person.details.name # Albert
```
