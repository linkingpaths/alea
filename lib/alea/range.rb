class Range

  def percent
    Percentage.new(rand_within(self))
  end

end