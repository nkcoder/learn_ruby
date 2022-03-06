# frozen_string_literal: true

### A class is defined using the keyword class, a name, and the keyword end.
#
# Class names must start with an uppercase letter, and should use CamelCase. Variable and methods names should use snake_case.
# The method new is defined on every class, and returns a new instance of the class.
class Person

end

person = Person.new
puts person
puts person.is_a?(Person)

## output
# #<Person:0x00007fb5de100f18>
# true

### instance methods
# Methods that are available on classes are called class methods, for example,`Person.new`,
# and methods that are available on instances are called instance methods, for example, `person.is_a?`.
#
# Instance methods are defined inside the class body.
#
# `initialize` is a special instance method, which is called under the hood when the object is created using the class
# method `new`, and all the arguments that you pass to `new` will be passed to `initialize`.
#
# `self` is a keyword that means the object itself
class Dog
  def initialize(name);
  end

  def bark(times)
    'bark, ' * times
  end

  def bark_3_times
    bark = bark(3)
    puts bark
    puts self.bark(2)
  end
end

puts Dog.new('Kate').bark(3)
puts Dog.new('Helen').bark_3_times

## output
# bark, bark, bark,
# bark, bark, bark,
# bark, bark,


