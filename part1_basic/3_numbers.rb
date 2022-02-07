############# math operators ###############
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

############# the `times` method of Integer ###############
## `times`: Iterates the given block int times, passing in values from zero to int - 1.
10.times do |i|
  print i, ' '
end

puts

10.times { |i| print i, ' '}

## output
# 0 1 2 3 4 5 6 7 8 9
# 0 1 2 3 4 5 6 7 8 9
