############# comparison operators ###############
## ==, !=, >, >=, <, <=
## ===: equivalent to ==, but no recommend
## eql?: compares value and type
puts 10 == 10
puts 10 != 9
puts 'Michael' == 'michael'
puts 10 == 10.to_f
puts 10 === 10.to_f
puts 10.eql?(10.to_f)

## output
# true
# true
# false
# true
# true
# false

puts '-' * 30

############# assignment operators ###############
## =, +=, -=, *=, /=, %=, **=
num = 10
puts num += 10
puts num -= 5
puts num *= 2
puts num /= 3
puts num %= 3
puts num **= 5

## output
# 20
# 15
# 30
# 10
# 1
# 1


