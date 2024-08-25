require 'minitest/autorun'
require_relative '../lib/sort_word_count'

class SortWordCountTest < Minitest::Test

  def test_sort_word_count
    input = File.open('../cherry_test/resource/input.txt', 'r').read
    expect = File.open('../cherry_test/resource/expected_output.txt', 'r').read
    assert_equal expect, SortWordCount.sort_count(input)
  end
end