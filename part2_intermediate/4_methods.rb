############# methods ###############
## a method must be first defined before it can be referenced.
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

## Predicate methods that end with a question mark ? return either true or false.
puts 10.even?
puts 5.odd?
puts 4.between?(3, 6)
puts [1, 2, 3].include?(10)
## output
# true
# true
# true
# false

## Bang methods end with an exlamation mark, and often modify the object they are called on. So these methods should be avoided.
last_name = 'Lebron'
puts last_name.upcase!
puts last_name

## output
# LEBRON
# LEBRON
