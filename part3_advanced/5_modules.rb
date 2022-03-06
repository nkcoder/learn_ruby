### modules vs classes
# modules are similar to classes: can hold methods, but:
# modules don't have a `new` method, so they cannot be instantiated, which means we cannot create objects from a module.
# modules are used to share methods between classes: you can `include` modules into classes and this makes the methods of
# modules available to the class.
#
module Encryption
  require 'digest'

  def encrypt(password)
    Digest::SHA2.hexdigest(password)
  end
end

class Account
  include Encryption

  def initialize(name, password)
    @name = name
    @password = password
  end

  attr_reader :name, :password

  def to_s
    encrypted_password = encrypt(@password)
    "name is #{@name}, password is: #{encrypted_password}"
  end
end

account = Account.new('Jack', 'password1')
puts account

## output
# name is Jack, password is: 0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e
