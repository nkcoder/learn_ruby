require '../common'

############# hashes ###############
## hash can hold any data type, return nil if the key not exist in the hash
print_delimiter('access hash elements')
dict = { 'one' => 1, 2 => 'two', 'three' => [1, 2, 3], 4 => true, 'five' => { 'hello' => 'world' } }
puts "the hash is: #{dict}"
puts "the value of an element: #{dict['one']}"
puts "the value of an element: #{dict.fetch(2)}"
puts "the value of not exist key: #{dict['no-exist']}"

## output
# the hash is: {"one"=>1, 2=>"two", "three"=>[1, 2, 3], 4=>true, "five"=>{"hello"=>"world"}}
# the value of an element: 1
# the value of an element: two
# the value of not exist key:

### symbols as hash keys
print_delimiter('symbols as hash keys')
symbol_hash = { name: 'Jonathon', country: 'AU', 'age': 20 }
puts "value is: #{symbol_hash[:name]}"
symbol_hash.each { |k, _| puts "type of key: #{k.class}" }
symbol_hash.each { |k, v| puts v if k.is_a?(Symbol) }

## output
# value is: Jonathon
# type of key: Symbol
# type of key: Symbol
# type of key: Symbol
# Jonathon
# AU
# 20

### useful methods of hash
print_delimiter('useful methods')
dict2 = { 'Michael' => 'AU', 'Daniel' => 'US' }
puts "keys: #{dict2.keys}"
puts "values: #{dict2.values}"
puts "length: #{dict2.length}"
puts "has value?: #{dict2.value?('AU')}"

### each, select
print_delimiter('each, select')
dict3 = { 'name': 'Michael', 'age': 18, 'favorite_sport': 'basketball' }
dict3.each { |k, v| puts "key is #{k}, value is #{v}" }
## if an argument is unnecessary, use _ or prepend _ to the argument
dict_by_select = dict3.select { |_, v| v.is_a?(Integer) }
dict_by_select2 = dict3.select { |_k, v| v.is_a?(Integer) }
puts "dict_by_select: #{dict_by_select}"
puts "dict_by_select2: #{dict_by_select2}"

## output
# key is name, value is Michael
# key is age, value is 18
# key is favorite_sport, value is basketball
# dict_by_select: {:age=>18}
# dict_by_select2: {:age=>18}
