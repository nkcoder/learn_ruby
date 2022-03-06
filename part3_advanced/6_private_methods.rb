### The keyword `private` tells Ruby that all methods defind from now on are supposed to be private.
# Private methods can only be called inside the object.
#
class PrivateDemo
  private

  def greet
    'Hello, world!'
  end

  public

  def say_hi
    'Hi, how are you?'
  end

end

puts PrivateDemo.new.say_hi
puts PrivateDemo.new.greet

## output
# Hi, how are you?
# private method `greet' called for #<PrivateDemo:0x00007fa035844fb8> (NoMethodError)
