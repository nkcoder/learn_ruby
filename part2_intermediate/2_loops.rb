# frozen_string_literal: true
require '../util'
############# while loops ###############
print_delimiter('while loop')
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
print_delimiter('each loop')
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

############# loop ###############
# `loop` is equivalent to `while true`
print_delimiter('loop keyword')
loop_index = 1
max_loop = 5
loop do
  puts "current loop index: #{loop_index}"
  loop_index += 1
  break if loop_index == max_loop
end


