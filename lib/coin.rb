class Cents
  attr_accessor(:amount)

  def initialize(amount)
    @amount = amount
  end

  def coins
    @pennies = 0
    @quarters = 0
    @dimes = 0
    @nickels = 0

    if (@amount >= 25)
      until (@amount < 25)
        @amount -= 25
        @quarters += 1
      end
    end

    if (@amount < 25 && @amount >= 10)
      until (@amount < 10)
        @amount -= 10
        @dimes += 1
      end
    end

    if (@amount < 10 && @amount >= 5)
      until (@amount < 5)
        @amount -= 5
        @nickels += 1
      end
    end

    if (@amount <5)
      @pennies = @amount
    end
    return "You have #{@pennies} pennies, #{@nickels} nickels, #{@dimes} dimes, and #{@quarters} quarters."
  end
end
