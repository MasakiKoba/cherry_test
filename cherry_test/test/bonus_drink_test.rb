require 'minitest/autorun'
require_relative '../lib/bonus_drink'

class BonusDrinkTest < Minitest::Test
  def test_bonus_drink_count0
    assert_equal 0, BonusDrink.total_count_for(0)
  end

  def test_bonus_drink_count1
    assert_equal 1, BonusDrink.total_count_for(1)
  end

  def test_bonus_drink_count3
    assert_equal 4, BonusDrink.total_count_for(3)
  end

  def test_bonus_drink_count11
    assert_equal 16, BonusDrink.total_count_for(11)
  end

  def test_bonus_drink_count100
    assert BonusDrink.total_count_for(100)
  end
end