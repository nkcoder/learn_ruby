users = [
  { username: 'michael', password: 'password1' },
  { username: 'daniel', password: 'password2' }
]

def auth_user(username, password, list_of_users)
  user_found = list_of_users.select { |user| user[:username] == username && user[:password] == password }.first

  if user_found.nil?
    'Credentials were not correct'
  else
    user_found
  end

end

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'if password is correct, you will get back the user object'

attempts = 1

while attempts < 4
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp

  puts "username: #{username}, password: #{password}"

  authentication = auth_user(username, password, users)
  puts authentication

  print 'Press n to quit or any other key to continue: '
  input = gets.chomp.downcase

  break if input == 'n'

  attempts += 1
end

puts 'You have exceed the number of attempts.' if attempts == 4
