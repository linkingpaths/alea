require File.dirname(__FILE__) + '/test_helper.rb'

class TestPercentage < Test::Unit::TestCase

  def test_amount
    assert_equal 10, 10.percent.amount
    assert_equal 10.5, 10.5.percent.amount
  end
  def test_odds
    assert_equal 10, 10.percent.chance.odds
  end

end
