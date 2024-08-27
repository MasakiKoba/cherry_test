require 'minitest/autorun'
require_relative '../lib/sort_word_count'

class SortWordCountTest < Minitest::Test
  INPUT = File.open('../cherry_test/resource/input.txt', 'r').read

  def test_sort_word_count
    expect = File.open('../cherry_test/resource/expected_output.txt', 'r').read
    assert_equal expect, SortWordCount.sort_count(INPUT)
  end

end