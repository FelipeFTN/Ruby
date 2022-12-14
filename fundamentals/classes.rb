# Classes

class Square
  # attr_reader, attr_writter, attr_accessor
  attr_accessor :side_length

  # Constructor
  def initialize(side_length)
    @side_length = side_length
  end

  def perimeter
    return @side_length * 4
  end

  def area
    return @side_length * @side_length
  end

  # To String you don't seed to call like a method
  def to_s
    return "Side Length: #{side_length}\nPerimeter: #{@side_length * 4}\nArea: #{@side_length * @side_length}"
  end

  def draw
    puts "*" * @side_length
    (@side_length - 2).times do
      print "*" + (" " * (@side_length -2)) + "*\n"
    end
    puts "*" * @side_length
  end
end

my_square = Square.new(5)

my_square.side_length = 10

puts my_square

puts my_square.draw
