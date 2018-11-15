class Number
  def initialize(input)
    @input = input
  end
  def counter
    range = 2..@input
    initial_array = range.select{ |r| r <= @input}
    initial_array.reject!{ |r| r % 2 == 0 && r != 2 || r % 3 == 0 && r != 3 || r % 5 == 0 && r != 5 || r % 7 == 0 && r != 7 }
    initial_array
  end
end
