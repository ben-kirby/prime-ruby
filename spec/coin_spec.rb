require ('rspec')
require ('coin')

describe (".Cents") do
  it("Takes a number less than five and determines the number of cents")do
    cents = Cents.new(1)
    expect(cents.coins).to(eq([1,0,0,0]))
  end

  it("Takes a number less than five and determines the number of cents")do
    cents = Cents.new(5)
    expect(cents.coins).to(eq([0,1,0, 0]))
  end

  it("Takes a number greater than five and determines the number of cents")do
    cents = Cents.new(87)
    expect(cents.coins).to(eq([2,0,1,3]))
  end

  it("Takes a number greater than five and determines the number of cents")do
    cents = Cents.new(104)
    expect(cents.coins).to(eq([4,0,0,4]))
  end
  it("It returns the number of cents in plain english")do
    cents = Cents.new(104)
    expect(cents.coins).to(eq("You have 4 pennies, 0 nickels, 0 dimes, and 4 quarters."))
  end

end
