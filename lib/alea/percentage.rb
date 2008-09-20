class Percentage
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def chance
    Chance.new(self)
  end

  def of(number, rounded=true)
    p = number * amount / 100.0
    rounded ? p.round : p
  end

  class Chance
    attr_reader :odds, :happens
    alias :happens? :happens
    
    def initialize(percent)
      @odds    = percent.amount
      @happens = @odds > Kernel.rand(100)
    end
    
    def of(&block)
      yield if happens?
    end
  end

end