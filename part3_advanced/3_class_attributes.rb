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
    "This is a hat and the color is: #{color}"
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
  attr_accessor :color, :size

  def initialize(color, size)
    @color = color
    @size = size
  end

  def to_s
    "This is a hat and the color is: #{@color}, the size is #{size}"
  end
end

hat2 = Hat2.new('blue', 10)
puts hat2
puts hat2.to_s
puts hat2.color
puts hat2.size

## output
# This is a hat and the color is: blue, the size is 10
# This is a hat and the color is: blue, the size is 10
# blue
# 10
