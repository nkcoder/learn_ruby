# frozen_string_literal: true
def print_delimiter(title)
  puts "#{'-' * 5} #{title} #{'-' * 5}"
end

############# arrays ###############
## array can hold different data type
data = ['Daniel', 'Michael', 10, [1, 2, 3, 4], 11.4, true]

# index start from zero, first element(s)
puts "first item: #{data[0]}"
puts "first item: #{data.first}"
puts "first 2 items: #{data.first(2)}"

# last element(s)
puts "last element: #{data[data.length - 1]}"
puts "last element: #{data.last}"
puts "last 2 elements: #{data.last(2)}"

# multiple array
puts "multiple array item: #{data[3][0]}"

puts "the length of the array is #{data.length}"

## output
# first item: Daniel
# first item: Daniel
# first 2 items: ["Daniel", "Michael"]
# last element: true
# last element: true
# last 2 elements: [11.4, true]
# multiple array item: 1
# the length of the array is 6

### bracket and fetch
print_delimiter('get element in the array')
## negative index counts from the end
puts "last item: #{data[-1]}"
## just return empty, no error raised
puts "out of index returns empty: #{data[data.length]}"
puts "last item by fetch: #{data.fetch(-1)}"
## if you uncomment the below, error will raise: in `fetch': index 6 outside of array bounds: -6...6
# puts data.fetch(data.length)
## the second is the default value if the index is invalid
puts "fetch use default value: #{data.fetch(data.length, 100)}"
## the block will be executed if the index is invalid
puts "fetch use block: #{data.fetch(data.length) { |i| "invalid index #{i}" }}"

## output
# last item: true
# out of index returns empty:
# last item by fetch: true
# fetch use default value: 100
# fetch use block: invalid index 6

### iterate array elements, each is the preferred one.
print_delimiter('iterate array elements')
arr = ['hello', 'world', 'peeps']
arr.each { |i| print i }
puts
for i in arr
  print i
end
puts

### other useful methods: include?, empty?, append, prepend, push, pop, filter, join, split
print_delimiter('other useful methods')

x = (1..5).to_a
puts "is empty?: #{x.empty?}"
puts "include?: #{x.include?(6)}"
x.append(5, 6, 7)
puts "uniq elements: #{x.uniq}"
x.prepend(8)
x.push(9)
y = x.pop
puts "push and pop: #{x}, #{y}"
puts "filter even: #{x.filter { |e| e.even? }}"
puts "filter odd: #{x.filter(&:odd?)}"
## filter is an alias of select
puts "select even: #{x.select(&:even?)}"
z = x.join('-')
puts "after join: #{z}"
puts "split: #{z.split('-')}"

## output
# is empty?: false
# include?: false
# uniq elements: [1, 2, 3, 4, 5, 6, 7]
# push and pop: [8, 1, 2, 3, 4, 5, 5, 6, 7], 9
# filter even: [8, 2, 4, 6]
# filter odd: [1, 3, 5, 5, 7]
# select even: [8, 2, 4, 6]
# after join: 8-1-2-3-4-5-5-6-7
# split: ["8", "1", "2", "3", "4", "5", "5", "6", "7"]



