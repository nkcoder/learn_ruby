############# print vs puts vs p ###############
## print: no new line at the end
## puts: new line at the end
## p: print the argument as it is and returns the argument
print 'Good morning.'
puts 'Hello World!'
puts 'Come on.'
p 'Hello World!'
p ['one', 'two', 3]

## output:
# Good morning.Hello World!
# Come on.
# "Hello World!"
# ["one", "two", 3]

############# string ###############
## single quote vs double quote, single quote doesn't support interpolation
first_name = 'Michael'
last_name = 'Dent'
puts "first name is #{first_name}, last name is #{last_name}"
puts 'first name is #{first_name}, last name is #{last_name}'

## output
# first name is Michael, last name is Dent
# first name is #{first_name}, last name is #{last_name}

## the methods without exclamation returns a new copy
hello = 'Hello World!'
puts hello.upcase
puts hello.downcase
puts hello.capitalize
puts hello

## output:
# HELLO WORLD!
# hello world!
# Hello world!
# Hello World!

## the methods with exclamation: updates the content of the str, return nil if no changes were made
content_will_be_changed = 'Hello World!'
puts content_will_be_changed.upcase!
puts content_will_be_changed.downcase!
puts content_will_be_changed.capitalize!
puts content_will_be_changed

# HELLO WORLD!
# hello world!
# Hello world!
# Hello world!

## string escape
p 'welcome, #{first_name}'
p 'welcome, \'how are you?\''

## output
# "welcome, \#{first_name}"
# "welcome, 'how are you?'"

## other string methods
puts 'hello'.reverse
puts 'hello'.empty?
puts ''.empty?
puts 'hello'.nil?
puts 'Welcome to the ruby world'.sub('the ruby', 'the Scala')

## output
# olleh
# false
# true
# false
# Welcome to the Scala world

############# variables ###############
## convention is to use under_score(_) between words
first_name = 'Michael'
puts first_name

############# get user input with gets ###############
## similar to puts, gets also has a new line at the end
## `chomp` method will remove the new line at the end
## you need to convert the input to your expected type using conversion methods like `to_i`
print "What's your name: "
your_name = gets
puts "Hello, #{your_name}, how are you?"
print "What's your name again: "
your_name2 = gets.chomp
puts "Hello, #{your_name2}, how are you?"
print 'Enter a number: '
your_number = gets.chomp.to_i
puts "your input multiply 2 is #{your_number * 2}"

## output
# What's your name: Michael
# Hello, Michael
# , how are you?
# What's your name again: Michael
# Hello, Michael, how are you?
# Enter a number: 10
# your input multiply 2 is 20

############# simple Math ###############
## +, -, *, /, **, %
puts 10 + 3
puts 10 - 3
puts 10 * 3
puts 10 / 3
puts 10 ** 3
puts 10 % 3
puts 10 / 3.0
puts 10 * 0.3

## output
# 13
# 7
# 30
# 3
# 1000
# 1
# 3.3333333333333335
# 3.0

############# number/string conversion ###############
## to_s, to_i, to_f
puts "#{30.to_s + 'abc'}"
puts '50'.to_i + 100
puts '50'.to_f * 2

## output
# 30abc
# 150
# 100.0

############# comparison operators ###############
## ==, !=, >, >=, <, <=
puts 10 == 10
puts 10 != 9
puts 'Michael' == 'michael'

## output
# true
# true
# false

############# assignment operators ###############
## =, +=, -=, *=, /=, %=, **=
base = 10
puts base += 10
puts base -= 5
puts base *= 2
puts base /= 3
puts base %= 3
puts base **= 5

## output
# 20
# 15
# 30
# 10
# 1
# 1

############# if/else conditional statements ###############
## if...elsif...else
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
