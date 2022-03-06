require '../util'

############# string ###############
## single quote vs double quote, single quote doesn't support interpolation
first_name = 'Michael'
last_name = 'Dent'
puts "first name is #{first_name}, last name is #{last_name}"
puts 'first name is #{first_name}, last name is #{last_name}'

## output
# first name is Michael, last name is Dent
# first name is #{first_name}, last name is #{last_name}

## the methods will return a new copy
hello = 'Hello World!'
puts "upcase: #{hello.upcase}"
puts "capitalize: #{hello.capitalize}"
puts "original: #{hello}"

## output:
# HELLO WORLD!
# Hello world!
# Hello World!

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
