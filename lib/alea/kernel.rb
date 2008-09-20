module Kernel

  def rand_within(range)
    rand(range.max - range.min) + range.min
  end

  def maybe(percent = 50.percent, &block)
    chances_of_this_happens 50.percent, &block
  end

  def frequently(&block)
    chances_of_this_happens 75.percent, &block
  end

  def probably(&block)
    chances_of_this_happens 65.percent, &block
  end

  def rarely(&block)
    chances_of_this_happens 20.percent, &block
  end

  def almost_never(&block)
    chances_of_this_happens 5.percent, &block
  end

  def almost_always(&block)
    chances_of_this_happens 95.percent, &block
  end

  def chances_of_this_happens(percent = 50.percent, &block)
    if block_given?
      percent.chance.of block
    else
      percent.chance.happens?
    end
    
  end
  
end