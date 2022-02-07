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
