require 'minitest/autorun'
require_relative '../lib/bingo'

class BingoTest < Minitest::Test
  def test_bingo
    assert Bingo.generate_card
  end
  
end