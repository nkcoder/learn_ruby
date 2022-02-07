############# class: getter/setter/to_s ###############
## method `initialize` will be called when you create a new instance of the class by `.new()`
## `@` means it is an instance variable
class Hat
  def initialize(color)
    @color = color
  end

  ## getter
  def color
    @color
  end

  ## setter, the convention is append `=` to the variable name
  def color=(new_color)
    @color = new_color
  end

  ## override the default to_s method
  def to_s
    "This is a hat and the color is: #{@color}"
  end
end

hat = Hat.new('red')
puts hat
puts hat.inspect
puts hat.color
hat.color = 'green'
puts hat.color

## output
# This is a hat and the color is: red
# #<Hat:0x00007f9e0d0708e8 @color="red">
# red
# green

############# class: attr_accessor ###############
## attr_reader: only getter
## attr_writer: only setter
## attr_accessor: both getter and setter
class Hat2
  attr_accessor :color

  def initialize(color)
    @color = color
  end

  def to_s
    "This is a hat and the color is: #{@color}"
  end
end

hat2 = Hat2.new('blue')
puts hat2
puts hat2.to_s
puts hat2.color

## output
# This is a hat and the color is: blue
# This is a hat and the color is: blue
# blue
