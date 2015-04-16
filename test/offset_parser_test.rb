require_relative 'test_helper'
require_relative '../lib/offset_parser'

class OffsetParserTest < Minitest::Test
  attr_accessor :offset_parser

  def setup
    @offset_parser = OffsetParser
  end

  def test_it_squares_and_parses_date
    assert_equal [9, 2, 2, 5], offset_parser.date_parse("020315")
    assert_equal [7, 9, 6, 9], offset_parser.date_parse("120313")
  end

end
  