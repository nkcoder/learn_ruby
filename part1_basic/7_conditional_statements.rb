# frozen_string_literal: true
require '../util'
############# if/else conditional statements ###############
## if...elsif...else
print_delimiter('if..elsif..else')
guess = 100
if (guess % 3).zero?
  puts 'your guess is dividable by 3'
elsif (guess % 5).zero?
  puts 'your guess is dividable by 5'
else
  puts 'bad guess'
end

## output
# your guess is dividable by 5

### you can use &&, || to combine conditions
print_delimiter('&&, ||')
first_condition = true
second_condition = false

if first_condition && second_condition
  puts 'both are true'
elsif first_condition || second_condition
  puts 'at least one is true'
else
  puts 'both are false'
end

## output
# at least one is true

### if and unless
# if and unless are opposite
print_delimiter('if and unless')
(1..5).each do |num|
  puts 'num is even' if num.even?
  puts 'num is odd' unless num.even?
end

## output
# num is odd
# num is even
# num is odd
# num is even
# num is odd
