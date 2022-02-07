############# hashes ###############
## hash can hold any data type, return nil if the key not exist in the hash
dict = { 'one' => 1, 2 => 'two', 'three' => [1, 2, 3], 4 => true, 'five' => { 'hello' => 'world' } }
puts dict
puts dict['one']
puts dict['five']['hello']
puts dict['no-exist']

## output
# {"one"=>1, 2=>"two", "three"=>[1, 2, 3], 4=>true, "five"=>{"hello"=>"world"}}
# 1
# world

## the only different between [] and fetch: fetch will raise an error is the key is not defined
dict2 = { 'one' => 1 }.merge({ 'two' => 2 })
puts dict2
puts dict2.fetch('one')
# puts dict2.fetch('three')

## output
# {"one"=>1, "two"=>2}
# 1
# ruby_beginners_part2.rb:72:in `fetch': key not found: "three" (KeyError)
# 	ruby_beginners_part2.rb:72:in `<main>'

dict3 = { 'Michael' => 'AU', 'Daniel' => 'US' }
puts dict3.keys
puts dict3.length
puts dict3.size

## output
# Michael
# Daniel
# 2
# 2
