require File.dirname(__FILE__) + '/test_helper.rb'

class TestNumeric < Test::Unit::TestCase

  def test_regular_percent
    assert_equal 10, 10.percent.of(100)
  end
  def test_rounded_percent
    assert_equal 10, 10.percent.of(99)
  end
  def test_not_rounded_percent
    assert_equal 9.9, 10.percent.of(99, false)  
  end
end
