############# arrays ###############
## array can hold different data type
data = ['Daniel', 'Michael', 10, [1, 2, 3, 4], 11.4, true]
## index start from zero
puts data[0]
puts data.length
## return empty, no error like: out of index
puts data[data.length]
## the last item in the array
puts data[data.length - 1]
## multiple array
puts data[3][0]

## output
# Daniel
# 6
#
# true
# 1

############# while loops ###############
index = 1
while index < 5
  puts "index is #{index}"
  index += 1
end

## output
# index is 1
# index is 2
# index is 3
# index is 4

############# each loops ###############
## if there is only one line in the loop body, prefer {}
(1..5).each { |i| puts "index is #{i}" }

## output
# index is 1
# index is 2
# index is 3
# index is 4
# index is 5

## for multi-line body, prefer do...end
names = ['Daniel', 'Michael', 'Colin']
# names = %w[Daniel Michael Colin]
names.each do |name|
  puts "The name is #{name}"
  puts "Welcome #{name}"
end

## output
# The name is Daniel
# Welcome Daniel
# The name is Michael
# Welcome Michael
# The name is Colin
# Welcome Colin

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

############# methods ###############
## if the method doesn't have parameters, the parentheses are redundant.
def say_hi
  puts 'Hi!'
end

say_hi

## output
# Hi!

## ruby methods will return the result of the last statement, so the `return` keyword is redundant.
## the parameters must match exactly
def hello_message(first_name, last_name)
  "Hello, #{first_name}, #{last_name}"
end

message = hello_message('Michael', 'Ken')
same_message = hello_message 'Michael', 'Ken'
puts message
puts same_message

## output
# Hello, Michael, Ken

## special methods: class, methods
puts 'Hello'.class
puts 10.class
puts 10.0.class
p 'Hello'.methods

## output
# String
# Integer
# Float
# [:unicode_normalize, :unicode_normalize!, :ascii_only? ...
