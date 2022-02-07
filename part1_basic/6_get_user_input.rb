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

