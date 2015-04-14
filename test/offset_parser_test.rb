require_relative 'test_helper'
require_relative '../lib/offset_parser'

class KeyParserTest < Minitest::Test
  attr_accessor :offset_parser

  def setup
    @offset_parser = OffsetParser.new
  end

  def test_it_squares_the_date
    assert_equal [9, 2, 2, 5], offset_parser.date_parse("020315")
    assert_equal [7, 9, 6, 9], offset_parser.date_parse("120313")
  end

end