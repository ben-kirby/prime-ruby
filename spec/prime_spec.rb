require ('rspec')
require('pry')
require ('prime')

describe (".Number") do
  it("Returns all prime numbers less than seven")do
    number = Number.new(7)
    expect(number.counter).to(eq([2, 3, 5, 7]))
  end

  it("Returns all prime numbers less than fifteen")do
    number = Number.new(15)
    expect(number.counter).to(eq([2, 3, 5, 7, 11, 13]))
  end

  it("Returns all prime numbers less than 30")do
    number = Number.new(30)
    expect(number.counter).to(eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29]))
  end

  it("Returns all prime numbers less than 30")do
    number = Number.new(50)
    expect(number.counter).to(eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]))
  end

  it("Returns all prime numbers less than 30")do
    number = Number.new(100)
    expect(number.counter).to(eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]))
  end

end
