require File.dirname(__FILE__) + '/test_helper.rb'

class TestKernel < Test::Unit::TestCase

  def test_rand_within
    100_000.times{
      lottery = rand_within(10..20)
      assert lottery >=10 && lottery <= 20
    }
  end

end
