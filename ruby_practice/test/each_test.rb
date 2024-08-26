require 'minitest/autorun'
require_relative '../lib/each'

class EachTest < Minitest::Test

  def test_each_sum
    input = [1,2,3]
    output = []
    expected = [2,3,4]
    MyEach.each(input) do |i|
       output << (i + 1)
    end
    assert_equal expected, output
  end

  def test_each_puts
    MyEach.each([1,2,3]) do |i|
      puts i
    end
  end
end