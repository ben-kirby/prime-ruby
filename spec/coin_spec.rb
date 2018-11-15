require ('rspec')
require ('coin')

describe (".Cents") do
  it("Takes a number less than five and determines the number of cents")do
    cents = Cents.new(1)
    expect(cents.find_pennies()).to(eq("There are 1."))
  end

  it("Takes a number less than five and determines the number of cents")do
    cents = Cents.new(10)
    expect(cents.find_nickels()).to(eq(2))
  end

end
