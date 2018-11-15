class Cents
  attr_accessor(:amount)

  def initialize(amount)
    @amount = amount
  end

  def find_pennies
    pennies = @amount
    return "There are #{pennies}."
  end

  def find_nickels
    nickels = 0
    until (@amount < 5)
      @amount -= 5
      nickels += 1
    end
    nickels
  end


end
