require 'minitest/autorun'
require_relative '../lib/name_index'

class NameIndexTest < Minitest::Test

  def test_name_index_no_input
    input = ''
    output = []
    assert_equal output, NameIndex.create_index(input)
  end

  def test_name_index_empty
    input = []
    output = []
    assert_equal output, NameIndex.create_index(input)
  end

  def test_name_index_a
    input = ['イトウ']
    output = [['ア', ['イトウ']]]
    assert_equal output, NameIndex.create_index(input)
  end

  def test_name_index
    input = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
    output = [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ]
    assert_equal output, NameIndex.create_index(input)
  end
end