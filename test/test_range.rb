require File.dirname(__FILE__) + '/test_helper.rb'

class TestRange < Test::Unit::TestCase

  def test_regular_percent
    estimation = (5..10).percent.of(100)
    assert estimation >= 5 && estimation <= 10
  end
end
